/* hook_telegram_combo.js
 *
 * 作用：
 *  - Java 层：hook 常见“危险权限”API + 你之前的 Telegram 相关 Java/native-JNI wrapper
 *  - Native 层：枚举 libtmessages.49.so 等 native module，尝试 attach 常见 JNI 导出名与 C++ 关键字
 *  - 日志输出采用可读形式，方便 later parsing
 *
 * 注意：
 *  - 运行前确保 frida-server 在设备上运行且 frida 能连接到设备。
 *  - 日志会打印到 frida stdout （或用 frida 的 -o/--output 保存）。
 */

function safeLog() {
  var args = Array.prototype.slice.call(arguments).map(function (a) {
    try { return typeof a === 'object' ? JSON.stringify(a) : String(a); } catch (e) { return String(a); }
  });
  console.log.apply(console, args);
}

function shortFmt(v) {
  try {
    if (v === null || v === undefined) return String(v);
    if (typeof v === 'string' || typeof v === 'number' || typeof v === 'boolean') return v;
    if (v.$className) return "<" + v.$className + ">";
    if (v instanceof Array || (v && v.length !== undefined)) return "<array len=" + v.length + ">";
    return String(v);
  } catch (e) { return String(v); }
}

function hookAllOverloads(Cls, methodName) {
  try {
    var C = Java.use(Cls);
    var m = C[methodName];
    var overloads = m.overloads;
    safeLog("[*] Hook " + Cls + "." + methodName + " overloads = " + overloads.length);
    overloads.forEach(function (ovl) {
      var sig = ovl.argumentTypes.map(t => t.className).join(", ");
      safeLog("    └─ " + methodName + "(" + sig + ")");
      ovl.implementation = function () {
        try {
          var argsFmt = [];
          for (var i = 0; i < arguments.length; i++) argsFmt.push(shortFmt(arguments[i]));
          safeLog("[+] " + Cls + "." + methodName + " called with:", argsFmt);
          var ret = ovl.apply(this, arguments);
          if (ret === undefined) safeLog("[+] " + Cls + "." + methodName + " => void");
          else safeLog("[+] " + Cls + "." + methodName + " =>", shortFmt(ret));
          return ret;
        } catch (e) {
          safeLog("[-] hook error in " + Cls + "." + methodName + ": " + e);
          return ovl.apply(this, arguments);
        }
      };
    });
  } catch (e) {
    safeLog("[-] Cannot hook " + Cls + "." + methodName + ": " + e);
  }
}

/* ========== Java 层 hooks ========== */
Java.perform(function () {
  safeLog("[*] Java.perform start");

  // Telegram-specific Java/native wrappers (你之前 hook 的那些)
  hookAllOverloads("org.telegram.tgnet.ConnectionsManager", "native_sendRequest");
  hookAllOverloads("org.telegram.tgnet.ConnectionsManager", "native_checkProxy");
  hookAllOverloads("org.telegram.tgnet.ConnectionsManager", "native_getConnectionState");
  hookAllOverloads("org.telegram.tgnet.ConnectionsManager", "native_setProxySettings");
  hookAllOverloads("org.telegram.tgnet.ConnectionsManager", "native_init");

  hookAllOverloads("org.telegram.messenger.Utilities", "aesIgeEncryption");
  hookAllOverloads("org.telegram.messenger.Utilities", "aesIgeEncryptionByteArray");
  hookAllOverloads("org.telegram.messenger.Utilities", "aesCtrDecryption");
  hookAllOverloads("org.telegram.messenger.Utilities", "pbkdf2");

  hookAllOverloads("org.telegram.messenger.MediaController", "startRecord");
  hookAllOverloads("org.telegram.messenger.MediaController", "writeFrame");
  hookAllOverloads("org.telegram.messenger.MediaController", "stopRecord");
  hookAllOverloads("org.telegram.messenger.MediaController", "getWaveform");

  hookAllOverloads("org.telegram.SQLite.SQLiteDatabase", "opendb");
  hookAllOverloads("org.telegram.SQLite.SQLitePreparedStatement", "prepare");
  hookAllOverloads("org.telegram.SQLite.SQLitePreparedStatement", "step");
  hookAllOverloads("org.telegram.SQLite.SQLiteDatabase", "beginTransaction");
  hookAllOverloads("org.telegram.SQLite.SQLiteDatabase", "commitTransaction");

  // ------------------------------
  // 危险权限相关的常见 API（建议同时加）
  // ------------------------------
  // Location
  hookAllOverloads("android.location.LocationManager", "getLastKnownLocation");
  hookAllOverloads("android.location.LocationManager", "requestLocationUpdates");
  hookAllOverloads("android.location.LocationManager", "requestSingleUpdate");

  // Camera / Microphone
  hookAllOverloads("android.hardware.Camera", "open");
  hookAllOverloads("android.media.MediaRecorder", "start");
  hookAllOverloads("android.media.MediaRecorder", "stop");
  hookAllOverloads("android.media.AudioRecord", "read");

  // Contacts / ContentResolver (noisy: 运行时会很多)
  hookAllOverloads("android.content.ContentResolver", "query");

  // Telephony / SMS
  hookAllOverloads("android.telephony.TelephonyManager", "getDeviceId");
  hookAllOverloads("android.telephony.TelephonyManager", "getImei");
  hookAllOverloads("android.telephony.TelephonyManager", "getLine1Number");
  hookAllOverloads("android.telephony.SmsManager", "sendTextMessage");

  // File I/O (storage)
  try {
    var FIS = Java.use("java.io.FileInputStream");
    FIS.$init.overloads.forEach(function (ov) {
      ov.implementation = function () {
        safeLog("[+] FileInputStream.<init> called with:", Array.prototype.slice.call(arguments).map(shortFmt));
        return ov.apply(this, arguments);
      };
    });
  } catch (e) {}

  try {
    var FOS = Java.use("java.io.FileOutputStream");
    FOS.$init.overloads.forEach(function (ov) {
      ov.implementation = function () {
        safeLog("[+] FileOutputStream.<init> called with:", Array.prototype.slice.call(arguments).map(shortFmt));
        return ov.apply(this, arguments);
      };
    });
  } catch (e) {}

  // Sensors
  hookAllOverloads("android.hardware.SensorManager", "registerListener");

  // Bluetooth
  hookAllOverloads("android.bluetooth.BluetoothAdapter", "startDiscovery");
  safeLog("[*] Java.perform end");
});

/* ========== Native 层 hooks ========== */
/* 在 non-Java 上下文运行：枚举 native modules -> attach symbols */
setImmediate(function () {
  try {
    safeLog("[*] Native attach: enumerate modules");
    var modules = Process.enumerateModulesSync();
    var candidates = modules.filter(m => m.name.indexOf("libtmessages") !== -1 || m.name.indexOf("lib") === 0 && (m.path.indexOf("/data/app/") !== -1 || m.path.indexOf("/system/") !== -1));
    // 以 libtmessages* 优先
    var preferred = modules.filter(m => m.name.indexOf("libtmessages") !== -1);
    if (preferred.length) candidates = preferred;

    candidates.forEach(function (m) {
      safeLog("[*] scanning module:", m.name, m.path);
      try {
        var syms = Module.enumerateSymbolsSync(m.name);
        // attach 一些确切的 JNI 导出名（如果存在）
        var interestingJNI = [
          "JNI_OnLoad",
          "Java_org_telegram_messenger_Utilities_aesIgeEncryption",
          "Java_org_telegram_messenger_Utilities_aesIgeEncryptionByteArray",
          "Java_org_telegram_messenger_Utilities_aesCtrDecryption",
          "Java_org_telegram_messenger_Utilities_pbkdf2",
          "Java_org_telegram_messenger_MediaController_startRecord",
          "Java_org_telegram_messenger_MediaController_writeFrame",
          "Java_org_telegram_messenger_MediaController_stopRecord",
          "Java_org_telegram_messenger_MediaController_getWaveform",
          "Java_org_telegram_messenger_NativeLoader_init",
          // C++-like symbols that may contain 'sendRequest' / 'ConnectionsManager'
          "native_sendRequest",
          "sendRequest",
          "native_checkProxy",
          "checkProxy",
          "ConnectionsManager"
        ];

        // Attach by exact match first
        interestingJNI.forEach(function (name) {
          var sym = syms.find(s => s.name === name);
          if (!sym) {
            // 兼容 C++ 名称被修饰的情况：查找包含 name 的符号
            sym = syms.find(s => s.name.indexOf(name) !== -1);
          }
          if (sym) {
            try {
              Interceptor.attach(sym.address, {
                onEnter: function (args) {
                  safeLog("[*] native onEnter:", m.name, sym.name, "args:", args.length);
                  // 打印前 6 个参数指针/数值（可能需要手工解析）
                  var dump = [];
                  for (var i = 0; i < Math.min(6, args.length); i++) {
                    try { dump.push(args[i].toString()); } catch (e) { dump.push(String(args[i])); }
                  }
                  safeLog("    ->", sym.name, dump);
                },
                onLeave: function (retval) {
                  safeLog("[*] native onLeave:", m.name, sym.name, "retval:", retval ? retval.toString() : String(retval));
                }
              });
              safeLog("[+] attached native symbol:", m.name, sym.name);
            } catch (e) {
              safeLog("[-] attach failed for", m.name, name, e);
            }
          }
        });

        // 如果前面没有 attach 到太多东西，再做基于关键词的 attach（限量，防止噪声）
        var keywords = ["sendRequest", "checkProxy", "ConnectionsManager", "tmessages", "native_"];
        syms.forEach(function (s) {
          if (s.name && keywords.some(k => s.name.indexOf(k) !== -1)) {
            // 只 attach 非导出的内联函数或重复太多会产生噪声：限制 attach 数量
            try {
              Interceptor.attach(s.address, {
                onEnter: function (args) {
                  safeLog("[*] native-key onEnter:", m.name, s.name);
                },
                onLeave: function (ret) {}
              });
              // 为减少日志，只打印 attach 过的前 12 个
              safeLog("[+] attached (keyword) ", m.name, s.name);
            } catch (e) {}
          }
        });

      } catch (e) {
        safeLog("[-] enumerateSymbolsSync failed for", m.name, e);
      }
    });

    // 尝试 hook RegisterNatives（各系统上名称可能不同，做 best-effort）
    try {
      var regCandidates = ["JNI_OnLoad", "RegisterNatives", "register_natives"];
      regCandidates.forEach(function (rn) {
        try {
          var raddr = Module.findExportByName(null, rn);
          if (raddr) {
            Interceptor.attach(raddr, {
              onEnter: function (args) {
                safeLog("[*] Register-like called:", rn, "args0:", args[0] ? args[0].toString() : "");
              }
            });
            safeLog("[+] attached register-like export:", rn);
          }
        } catch (e) {}
      });
    } catch (e) {
      safeLog("[-] registernatives attach attempt failed:", e);
    }

    safeLog("[*] Native attach done");
  } catch (e) {
    safeLog("[-] setImmediate native attach error:", e);
  }
});