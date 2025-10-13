// PID=$(adb shell pidof org.telegram.messenger)     
// frida -D emulator-5554 \                                 
//   -p "$PID" \ 
//   -l ~/android-frida-traces/scripts/frida_java_hooks.js \
//   -o ~/android-frida-traces/logs/telegram_java_hook.log
/* ===================== helpers ===================== */
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
      var sig = ovl.argumentTypes.map(function (t){ return t.className; }).join(", ");
      safeLog("    └─ " + methodName + "(" + sig + ")");
      var orig = ovl; // keep original
      ovl.implementation = function () {
        try {
          var argsFmt = [];
          for (var i = 0; i < arguments.length; i++) argsFmt.push(shortFmt(arguments[i]));
          safeLog("[+] " + Cls + "." + methodName + " called with:", argsFmt);
          var ret = orig.apply(this, arguments);
          if (ret === undefined) safeLog("[+] " + Cls + "." + methodName + " => void");
          else safeLog("[+] " + Cls + "." + methodName + " =>", shortFmt(ret));
          return ret;
        } catch (e) {
          safeLog("[-] hook error in " + Cls + "." + methodName + ": " + e);
          return orig.apply(this, arguments);
        }
      };
    });
  } catch (e) {
    safeLog("[-] Cannot hook " + Cls + "." + methodName + ": " + e);
  }
}
function stackTrace() {
  try {
    var Exception = Java.use('java.lang.Exception');
    var e = Exception.$new('stack');
    var sw = Java.use('java.io.StringWriter').$new();
    var pw = Java.use('java.io.PrintWriter').$new(sw);
    e.printStackTrace(pw);
    return sw.toString();
  } catch (err) { return String(err); }
}
function nowIso() {
  try {
    var SDF = Java.use('java.text.SimpleDateFormat');
    var DateCls = Java.use('java.util.Date');
    return SDF.$new("yyyy-MM-dd'T'HH:mm:ss.SSSZ").format(DateCls.$new());
  } catch (e) { return new Date().toISOString(); }
}

/* ===================== config ===================== */
var CONFIG = {
  logStacksForDangerousApis: true,
  okHttpTryRealCallPatches: true
};

/* ===================== hooks ===================== */
Java.perform(function () {
  safeLog("[*] Java.perform start @" + nowIso());

  /* === Telegram-specific wrappers === */
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

  /* === Dangerous permissions — Location === */
  hookAllOverloads("android.location.LocationManager", "getLastKnownLocation");
  hookAllOverloads("android.location.LocationManager", "requestLocationUpdates");
  hookAllOverloads("android.location.LocationManager", "requestSingleUpdate");

  // FusedLocationProviderClient: hook each overload safely (no recursion)
  try {
    var Fused = Java.use('com.google.android.gms.location.FusedLocationProviderClient');
    if (Fused) {
      if (Fused.getLastLocation && Fused.getLastLocation.overloads) {
        Fused.getLastLocation.overloads.forEach(function(ov){
          var orig = ov;
          ov.implementation = function() {
            safeLog("[+] FusedLocation.getLastLocation()", CONFIG.logStacksForDangerousApis ? stackTrace() : "");
            return orig.apply(this, arguments);
          };
        });
      }
      if (Fused.requestLocationUpdates && Fused.requestLocationUpdates.overloads) {
        Fused.requestLocationUpdates.overloads.forEach(function(ov){
          var orig = ov;
          ov.implementation = function() {
            safeLog("[+] FusedLocation.requestLocationUpdates", CONFIG.logStacksForDangerousApis ? stackTrace() : "");
            return orig.apply(this, arguments);
          };
        });
      }
    }
  } catch (e) {}

  /* === Telephony & Device IDs === */
  hookAllOverloads("android.telephony.TelephonyManager", "getDeviceId");
  hookAllOverloads("android.telephony.TelephonyManager", "getImei");
  hookAllOverloads("android.telephony.TelephonyManager", "getSubscriberId");
  hookAllOverloads("android.telephony.TelephonyManager", "getLine1Number");
  hookAllOverloads("android.telephony.SmsManager", "sendTextMessage");

  /* === SMS / Contacts === */
  try {
    var ContentResolver = Java.use("android.content.ContentResolver");
    ContentResolver.query.overloads.forEach(function (ov) {
      var orig = ov;
      ov.implementation = function (uri, projection, selection, selectionArgs, sortOrder) {
        safeLog("[+] ContentResolver.query uri=", shortFmt(uri), " sel=", shortFmt(selection),
          CONFIG.logStacksForDangerousApis ? stackTrace() : "");
        return orig.apply(this, arguments);
      };
    });
  } catch (e) {}

  /* === Camera & Microphone === */
  hookAllOverloads("android.hardware.Camera", "open");
  try {
    var CameraManager = Java.use('android.hardware.camera2.CameraManager');
    CameraManager.openCamera.overloads.forEach(function (ov) {
      var orig = ov;
      ov.implementation = function (id, cb, handler) {
        safeLog("[+] CameraManager.openCamera id=", shortFmt(id), CONFIG.logStacksForDangerousApis ? stackTrace() : "");
        return orig.apply(this, arguments);
      };
    });
  } catch (e) {}

  hookAllOverloads("android.media.MediaRecorder", "start");
  hookAllOverloads("android.media.MediaRecorder", "stop");
  hookAllOverloads("android.media.AudioRecord", "read");

  /* === Files & Storage === */
  try {
    var File = Java.use("java.io.File");
    ["exists", "delete", "mkdir", "mkdirs", "renameTo", "list", "listFiles", "getAbsolutePath", "length"].forEach(function(m){
      try {
        if (File[m]) {
          File[m].overloads.forEach(function(ov){
            var orig = ov;
            ov.implementation = function(){
              var ret = orig.apply(this, arguments);
              try {
                var path = (this.getAbsolutePath && this.getAbsolutePath()) || shortFmt(this);
                safeLog("[+] File." + m + " path=", path, "=>", shortFmt(ret));
              } catch(e) { safeLog("[+] File." + m + " => (err reading path)"); }
              return ret;
            };
          });
        }
      } catch(e){}
    });
  } catch(e){}

  try {
    var Ctx = Java.use("android.content.ContextWrapper");
    if (Ctx.getFilesDir) {
      var origGFD = Ctx.getFilesDir;
      Ctx.getFilesDir.implementation = function() {
        var dir = origGFD.call(this);
        try { safeLog("[+] Context.getFilesDir =>", dir ? dir.getAbsolutePath() : null); } catch(e){}
        return dir;
      };
    }
    if (Ctx.openFileOutput) {
      Ctx.openFileOutput.overloads.forEach(function(ov){
        var orig = ov;
        ov.implementation = function(name, mode){
          safeLog("[+] Context.openFileOutput name=", name, "mode=", mode, CONFIG.logStacksForDangerousApis ? stackTrace() : "");
          return orig.apply(this, arguments);
        };
      });
    }
  } catch(e) {}

  try {
    var FIS = Java.use("java.io.FileInputStream");
    FIS.$init.overloads.forEach(function (ov) {
      var orig = ov;
      ov.implementation = function () {
        safeLog("[+] FileInputStream.<init> args:", Array.prototype.slice.call(arguments).map(shortFmt),
          CONFIG.logStacksForDangerousApis ? stackTrace() : "");
        return orig.apply(this, arguments);
      };
    });
  } catch (e) {}
  try {
    var FOS = Java.use("java.io.FileOutputStream");
    FOS.$init.overloads.forEach(function (ov) {
      var orig = ov;
      ov.implementation = function () {
        safeLog("[+] FileOutputStream.<init> args:", Array.prototype.slice.call(arguments).map(shortFmt),
          CONFIG.logStacksForDangerousApis ? stackTrace() : "");
        return orig.apply(this, arguments);
      };
    });
  } catch (e) {}

  /* === Network: java.net.Socket === */
  try {
    var Socket = Java.use("java.net.Socket");
    if (Socket.$init) {
      Socket.$init.overloads.forEach(function(ov){
        var orig = ov;
        ov.implementation = function(){
          var ret = orig.apply(this, arguments);
          try { safeLog("[+] Socket.<init> remote=", this.getInetAddress ? this.getInetAddress() + ":" + this.getPort() : shortFmt(arguments[0])); } catch(e){}
          return ret;
        };
      });
    }
    if (Socket.connect) {
      Socket.connect.overloads.forEach(function(ov){
        var orig = ov;
        ov.implementation = function(addr, timeout){
          safeLog("[+] Socket.connect addr=", shortFmt(addr), "timeout=", timeout);
          return orig.apply(this, arguments);
        };
      });
    }
  } catch(e){}

  /* === Network: HttpURLConnection / URL === */
  try {
    var URL = Java.use("java.net.URL");
    if (URL.openConnection) {
      URL.openConnection.overloads.forEach(function(ov){
        var orig = ov;
        ov.implementation = function(){
          var conn = orig.apply(this, arguments);
          try { safeLog("[+] URL.openConnection =>", this.toString(), " -> ", conn ? conn.$className : null); } catch(e){}
          return conn;
        };
      });
    }

    var HttpURLConnection = Java.use("java.net.HttpURLConnection");
    ["connect", "getInputStream", "getOutputStream", "disconnect"].forEach(function(m){
      try {
        if (HttpURLConnection[m]) {
          HttpURLConnection[m].overloads.forEach(function(ov){
            var orig = ov;
            ov.implementation = function(){
              try {
                var url = (this.getURL && this.getURL()) ? this.getURL().toString() : null;
                var method = (this.getRequestMethod && this.getRequestMethod()) ? this.getRequestMethod() : null;
                safeLog("[+] HttpURLConnection." + m, "url=", url, "method=", method, CONFIG.logStacksForDangerousApis ? stackTrace() : "");
              } catch(e){}
              return orig.apply(this, arguments);
            };
          });
        }
      } catch(e){}
    });
  } catch(e){}

  /* === Network: OkHttp (okhttp3) — SAFE VERSION === */
  try {
    var OkHttpClient = null, Call = null, Request = null, RealCall = null;
    try { OkHttpClient = Java.use("okhttp3.OkHttpClient"); } catch(e) {}
    try { Call = Java.use("okhttp3.Call"); } catch(e) {}
    try { Request = Java.use("okhttp3.Request"); } catch(e) {}
    try { RealCall = Java.use("okhttp3.RealCall"); } catch(e) {}

    if (OkHttpClient && OkHttpClient.newCall) {
      OkHttpClient.newCall.overloads.forEach(function(ov){
        var orig = ov;
        ov.implementation = function(req){
          try {
            if (!req) {
              safeLog("[+] OkHttpClient.newCall (null request)");
            } else if (Request) {
              try {
                var r = Java.cast(req, Request);
                var url = (r.url && r.url()) ? r.url().toString() : null;
                var method = (r.method && r.method()) ? r.method() : null;
                safeLog("[+] OkHttpClient.newCall", method, url);
              } catch (e) {
                safeLog("[-] OkHttpClient.newCall cast/log error:", e);
              }
            } else {
              try { safeLog("[+] OkHttpClient.newCall (no Request class) req=", req.toString()); } catch(e){}
            }
          } catch(e) {
            safeLog("[-] OkHttpClient.newCall unexpected error:", e);
          }
          return orig.apply(this, arguments);
        };
      });
    }

    if (Call && Call.execute) {
      var origCallExecute = Call.execute;
      Call.execute.implementation = function(){
        try {
          var req = null, url = null, method = null;
          try { req = (this.request && this.request()) ? this.request() : null; } catch(e){}
          if (req) {
            try { url = (req.url && req.url()) ? req.url().toString() : null; } catch(e){}
            try { method = req.method ? req.method() : null; } catch(e){}
          }
          safeLog("[+] OkHttp Call.execute", method, url);
        } catch(e) { safeLog("[-] Call.execute logging error:", e); }
        return origCallExecute.apply(this, arguments);
      };
    }

    if (Call && Call.enqueue) {
      Call.enqueue.overloads.forEach(function(ov){
        var orig = ov;
        ov.implementation = function(callback){
          try {
            var req = null, url = null, method = null;
            try { req = (this.request && this.request()) ? this.request() : null; } catch(e){}
            if (req) {
              try { url = (req.url && req.url()) ? req.url().toString() : null; } catch(e){}
              try { method = req.method ? req.method() : null; } catch(e){}
            }
            safeLog("[+] OkHttp Call.enqueue", method, url, "callback=", callback ? shortFmt(callback) : null);
          } catch(e) { safeLog("[-] Call.enqueue logging error:", e); }
          return orig.apply(this, arguments);
        };
      });
    }

    if (RealCall && RealCall.execute) {
      var origRealCallExecute = RealCall.execute;
      RealCall.execute.implementation = function(){
        try {
          var req = null, url = null, method = null;
          try { req = (this.request && this.request()) ? this.request() : null; } catch(e){}
          if (req) {
            try { url = (req.url && req.url()) ? req.url().toString() : null; } catch(e){}
            try { method = req.method ? req.method() : null; } catch(e){}
          }
          safeLog("[+] RealCall.execute", method, url);
        } catch(e) { safeLog("[-] RealCall.execute logging error:", e); }
        return origRealCallExecute.apply(this, arguments);
      };
    }
  } catch(e) {
    safeLog("[-] OkHttp hooking block skipped or failed:", e);
  }

  /* === SQLite (ensure coverage) === */
  try {
    hookAllOverloads("org.telegram.SQLite.SQLitePreparedStatement", "prepare");
    hookAllOverloads("org.telegram.SQLite.SQLitePreparedStatement", "step");
  } catch(e){}

  /* === Sensors & Bluetooth === */
  hookAllOverloads("android.hardware.SensorManager", "registerListener");
  hookAllOverloads("android.bluetooth.BluetoothAdapter", "startDiscovery");

  safeLog("[*] Java.perform end @" + nowIso());
});