// hook_all_so_exports_global.js
//
// Hook exported functions across multiple .so modules safely (configurable).
// Usage (spawn):
// frida -U -f org.telegram.messenger \
//       -l ~/android-frida-traces/scripts/frida_native_hooks.js \
//       -o ~/android-frida-traces/logs/hooks_native_$(date +%Y%m%d_%H%M%S).log 2>&1
//
// WARNING: Hooking many native functions is powerful but dangerous. Start with restricted config.

setImmediate(function () {
  'use strict';

  // ========== CONFIG ==========
  // Module selection
  // Only include modules whose name/path matches one of the include regexps.
  // Default includes typical app libs (in /data or /data/app) and .so names.
  const MODULE_INCLUDE = [
    /\/data\/app\//i,          // libraries in app install dir
    /lib\/arm64/i,             // arm64 libs in vendor/packaged paths
    /\.so$/i                   // any .so (broad)
  ];

  // Exclude obvious system libs to reduce risk (libc, libart, driver libs...). Add more if needed.
  const MODULE_EXCLUDE = [
    /\/system\//i,
    /\/apex\//i,
    /libc\.so$/i,
    /libm\.so$/i,
    /libdl\.so$/i,
    /libandroid_runtime\.so$/i,
    /libbinder.so$/i,
    /libart.so$/i,
    /frida-agent-64\.so$/i
  ];

  // Symbol name allowlist (prefixes) — default to JNI-style Telegram names (safer)
  // Set empty array to allow all exported functions (dangerous).
  const SYMBOL_PREFIX_ALLOW = [ "Java_org_telegram_", "Java_org_webrtc_", "Java_com_google_android_exoplayer2_" ];
  // SYMBOL_PREFIX_ALLOW = []; // <-- allow all symbols (use with extreme caution)

  // Symbol denylist regexes for known problematic names
  const SYMBOL_SKIP_REGEX = [
    /TimestampAligner_nativeRtcTimeNanos/,
    /EglBase10Impl_nativeGetCurrentNativeEGLContext/,
    /nativeShutdownInternalTracer/,
    /nativeStopInternalTracingCapture/,
    /nativeEnableLogToDebugOutput/,
    /_ZN.*pthread.*/i
  ];

  // Hooking / logging limits
  const MAX_TOTAL_HOOKS = 0;           // 0 = no hard limit (dangerous). Set >0 to limit number of hooks.
  const MAX_HOOKS_PER_MODULE = 0;      // 0 = no module limit
  const SAMPLE_N = 1;                  // log 1 of SAMPLE_N calls (set >1 to reduce output)
  const MAX_LOGS_PER_FUNCTION = 20;    // maximum logs per function
  const GLOBAL_MAX_LOGS = 20000;       // stop logging after this many events
  const MODULE_POLL_TIMEOUT_MS = 120000; // wait for modules initial load (when spawned)
  const POLL_INTERVAL_MS = 250;        // module enumeration polling interval

  // =================================

  const stats = {
    modulesScanned: 0,
    modulesSelected: [],
    exportsEnumerated: 0,
    functionsFound: 0,
    hookAttempts: 0,
    hooksInstalled: 0,
    hookFailures: 0,
    skippedByPrefix: 0,
    skippedByRegex: 0,
    totalLogs: 0
  };

  const perFuncLogs = Object.create(null);
  const installedHooks = [];

  function now() { return (new Date()).toISOString(); }
  function log() {
    try {
      var args = Array.prototype.slice.call(arguments);
      args.unshift("[" + now() + "]");
      console.log.apply(console, args);
    } catch (e) {}
  }
  function hex(p) { try { return ptr(p).toString(); } catch (e) { return String(p); } }

  function moduleMatches(m) {
    try {
      var path = m.path || m.name || "";
      // exclude if any exclude matches
      for (var i=0;i<MODULE_EXCLUDE.length;i++) {
        if (MODULE_EXCLUDE[i].test(path)) return false;
      }
      // include if any include matches
      for (var j=0;j<MODULE_INCLUDE.length;j++) {
        if (MODULE_INCLUDE[j].test(path)) return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  function symbolAllowed(name) {
    if (!name) return false;
    if (SYMBOL_PREFIX_ALLOW.length === 0) return true;
    for (var i=0;i<SYMBOL_PREFIX_ALLOW.length;i++) {
      if (name.indexOf(SYMBOL_PREFIX_ALLOW[i]) === 0) return true;
    }
    return false;
  }
  function symbolSkippedByRegex(name) {
    if (!name) return false;
    for (var i=0;i<SYMBOL_SKIP_REGEX.length;i++) {
      if (SYMBOL_SKIP_REGEX[i].test(name)) return true;
    }
    return false;
  }

  // attach safely to address with minimal logging
  function tryAttach(s, moduleName) {
    stats.hookAttempts++;
    var name = s.name || ("<unnamed@" + hex(s.address) + ")");
    // prefix allowlist
    if (!symbolAllowed(name)) {
      stats.skippedByPrefix++;
      return false;
    }
    // denylist
    if (symbolSkippedByRegex(name)) {
      stats.skippedByRegex++;
      return false;
    }
    try {
      Interceptor.attach(s.address, {
        onEnter: function (args) {
          // global guard
          stats.totalLogs++;
          if (stats.totalLogs > GLOBAL_MAX_LOGS) return;

          perFuncLogs[name] = (perFuncLogs[name] || 0) + 1;
          if (perFuncLogs[name] > MAX_LOGS_PER_FUNCTION) return;

          this._cnt = (this._cnt || 0) + 1;
          if (this._cnt % SAMPLE_N !== 0) return;

          // light record
          try {
            var tid = (typeof Process !== 'undefined' && Process.getCurrentThreadId) ? Process.getCurrentThreadId() : "<tid?>";
            log("CALL", moduleName, name, "@", hex(s.address), "thread=", tid, "count=", this._cnt);
            // pointer args only
            log("    ARGS:", hex(args[0]), hex(args[1]), hex(args[2]), hex(args[3]));
          } catch (e) {}
        },
        onLeave: function (retval) {
          try {
            if ((perFuncLogs[name] || 0) > MAX_LOGS_PER_FUNCTION) return;
            if (stats.totalLogs > GLOBAL_MAX_LOGS) return;
            log("RET", moduleName, name, "retval=", hex(retval));
          } catch (e) {}
        }
      });
      stats.hooksInstalled++;
      installedHooks.push({ name: name, addr: s.address, module: moduleName });
      return true;
    } catch (err) {
      stats.hookFailures++;
      if (stats.hookFailures <= 25) log("Failed to attach to", name, "@", hex(s.address), "->", String(err));
      else if (stats.hookFailures === 26) log("Further attach failures will be suppressed.");
      return false;
    }
  }

  // Enumerate modules and attach to exports
  function scanAndAttachAll() {
    log("Starting module scan...");
    var mods = Process.enumerateModules();
    stats.modulesScanned = mods.length;

    for (var i=0;i<mods.length;i++) {
      var m = mods[i];
      if (!moduleMatches(m)) continue;
      stats.modulesSelected.push(m.name || m.path || "<unknown>");
      log("Scanning module:", m.name, "path:", m.path || "<no-path>", "base:", hex(m.base), "size:", m.size);
      var exps;
      try {
        exps = m.enumerateExports();
      } catch (e) {
        log("enumerateExports() failed for", m.name, "->", e);
        continue;
      }
      stats.exportsEnumerated += exps.length;
      // filter to functions
      var funcs = exps.filter(function(x){ return x.type === "function"; });
      stats.functionsFound += funcs.length;
      log("  exports:", exps.length, " functions:", funcs.length);

      var toHook = funcs;
      if (MAX_HOOKS_PER_MODULE > 0 && toHook.length > MAX_HOOKS_PER_MODULE) {
        toHook = toHook.slice(0, MAX_HOOKS_PER_MODULE);
        log("  Limiting to first", toHook.length, "functions for this module (MAX_HOOKS_PER_MODULE)");
      }
      for (var j=0;j<toHook.length;j++) {
        if (MAX_TOTAL_HOOKS > 0 && stats.hooksInstalled >= MAX_TOTAL_HOOKS) {
          log("Reached MAX_TOTAL_HOOKS limit:", MAX_TOTAL_HOOKS);
          return;
        }
        var s = toHook[j];
        tryAttach(s, m.name || m.path || "<unknown>");
      }
    }

    log("=== SCAN COMPLETE ===");
    log("modules scanned:", stats.modulesScanned);
    log("modules selected:", stats.modulesSelected.length, stats.modulesSelected.slice(0,40));
    log("exports enumerated:", stats.exportsEnumerated);
    log("functions found:", stats.functionsFound);
    log("hook attempts:", stats.hookAttempts);
    log("hooks installed:", stats.hooksInstalled);
    log("hook failures:", stats.hookFailures);
    log("skippedByPrefix:", stats.skippedByPrefix, "skippedByRegex:", stats.skippedByRegex);
    log("totalLogs so far:", stats.totalLogs);
    log("To detach all hooks later: Interceptor.detachAll();");
  }

  // Poll initially if modules are still loading (spawned)
  var start = Date.now();
  var timedOut = false;
  var p = setInterval(function(){
    var elapsed = Date.now() - start;
    try {
      // scan when at least one matching module appears OR timeout
      var mods = Process.enumerateModules();
      var anyMatch = mods.some(function(mm){
        return moduleMatches(mm);
      });
      if (anyMatch || elapsed > MODULE_POLL_TIMEOUT_MS) {
        clearInterval(p);
        if (!anyMatch) {
          log("Module poll timed out - no modules matched the include filters within", MODULE_POLL_TIMEOUT_MS, "ms. Aborting.");
          timedOut = true;
        } else {
          scanAndAttachAll();
        }
      } else {
        // still waiting for modules to load
        if (elapsed % 5000 < POLL_INTERVAL_MS) log("Waiting for modules to match include filters... elapsed_ms=", elapsed);
      }
    } catch (e) {
      clearInterval(p);
      log("Fatal error during module polling:", e);
      timedOut = true;
    }
  }, POLL_INTERVAL_MS);

  // Expose stats for REPL inspection
  try {
    globalThis.__hook_all_so_stats = stats;
    globalThis.__hook_all_so_perFuncLogs = perFuncLogs;
    globalThis.__hook_all_so_installed = installedHooks;
  } catch (e) {}

});