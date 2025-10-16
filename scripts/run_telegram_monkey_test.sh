#!/usr/bin/env bash
set -euo pipefail

# ========== CONFIG ==========
PKG="org.telegram.messenger"           # target package
FRIDA_DEVICE_FLAG="-D emulator-5554"   # device: -D <id> or -U
EVENTS=800                             # monkey events
THROTTLE_MS=50                         # monkey throttle (ms)
OUTDIR="${HOME}/android-frida-traces/runs"
TS="$(date +%Y%m%dT%H%M%S)"
RUNDIR="${OUTDIR}/${PKG}_${TS}"
JAVA_HOOK="${HOME}/android-frida-traces/scripts/frida_java_hooks.js"    
NATIVE_HOOK="${HOME}/android-frida-traces/scripts/frida_native_hooks.js" 
MONKEY_LOG="${RUNDIR}/monkey_${TS}.log"
FRIDA_JAVA_LOG="${RUNDIR}/frida_java_${TS}.log"
FRIDA_NATIVE_LOG="${RUNDIR}/frida_native_${TS}.log"
LOGCAT_LOG="${RUNDIR}/logcat_${TS}.log"
# ===========================

mkdir -p "${RUNDIR}"
echo "[*] Run dir: ${RUNDIR}"

# helper: wait for pid
get_pid() {
  for i in {1..15}; do
    pid=$(adb shell pidof ${PKG} 2>/dev/null | tr -d '\r' || true)
    if [[ -n "${pid}" ]]; then
      echo "${pid}"
      return 0
    fi
    sleep 1
  done
  return 1
}

# 0) clear logcat to make logs cleaner
adb logcat -c || true

# 1) Make sure app is launched
echo "[*] Launching ${PKG}"
adb shell monkey -p ${PKG} -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1 || true
sleep 2

PID="$(get_pid)" || { echo "Failed to find PID for ${PKG}"; exit 1; }
echo "[*] PID=${PID}"

# 2) start logcat capture
adb logcat -v time > "${LOGCAT_LOG}" 2>&1 &
LOGCAT_PID=$!
echo "[*] logcat pid=${LOGCAT_PID}"

# 3) attach Frida Java hook (background)
echo "[*] Attaching Frida Java hook -> ${FRIDA_JAVA_LOG}"
frida ${FRIDA_DEVICE_FLAG} -p ${PID} -l "${JAVA_HOOK}" -o "${FRIDA_JAVA_LOG}"  &
FRIDA_JAVA_PID=$!
sleep 1

# 4) attach Frida native hook (background)
echo "[*] Attaching Frida native hook -> ${FRIDA_NATIVE_LOG}"
frida ${FRIDA_DEVICE_FLAG} -p ${PID} -l "${NATIVE_HOOK}" -o "${FRIDA_NATIVE_LOG}" &
FRIDA_NATIVE_PID=$!
sleep 1

# 5) disable animations for more deterministic behavior
adb shell settings put global window_animation_scale 0.0
adb shell settings put global transition_animation_scale 0.0
adb shell settings put global animator_duration_scale 0.0

# 6) Run Monkey
echo "[*] Running Monkey: events=${EVENTS}, throttle=${THROTTLE_MS}ms"
adb shell monkey -p ${PKG} --throttle ${THROTTLE_MS} --pct-syskeys 0 --pct-nav 10 --pct-touch 70 -v ${EVENTS} > "${MONKEY_LOG}" 2>&1 || true
echo "[*] Monkey finished, log -> ${MONKEY_LOG}"

# 7) wait a bit for frida to flush
sleep 5

# 8) capture dumpsys / meminfo / bugreport
adb shell dumpsys activity activities > "${RUNDIR}/dumpsys_activities_${TS}.txt" 2>&1 || true
adb shell dumpsys meminfo ${PKG} > "${RUNDIR}/meminfo_${TS}.txt" 2>&1 || true

# 9) stop background processes (frida & logcat)
echo "[*] Stopping frida & logcat (host-side PIDs): ${FRIDA_JAVA_PID}, ${FRIDA_NATIVE_PID}, ${LOGCAT_PID}"
kill ${FRIDA_JAVA_PID} ${FRIDA_NATIVE_PID} ${LOGCAT_PID} 2>/dev/null || true

echo "[*] Done. All artifacts in ${RUNDIR}"
echo " - monkey log: ${MONKEY_LOG}"
echo " - frida java log: ${FRIDA_JAVA_LOG}"
echo " - frida native log: ${FRIDA_NATIVE_LOG}"
echo " - logcat: ${LOGCAT_LOG}"