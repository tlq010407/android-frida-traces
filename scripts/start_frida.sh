#!/usr/bin/env bash
set -euo pipefail

# Usage: ./start_frida.sh <device_serial?> <local_frida_server_path>
# Example: ./start_frida.sh emulator-5554 ~/android-frida-traces/frida-bin/frida-server-17.3.2-android-arm64
DEV=${1:-}   # optional adb device serial
LOCAL_BIN=${2:-./frida-server}  # local path to frida-server binary

ADB="adb"
if [[ -n "$DEV" ]]; then
  ADB="adb -s $DEV"
fi

# check device
$ADB wait-for-device
echo "[start_frida] device connected: $($ADB get-state || true)"

# push binary if not present or different
REMOTE_PATH="/data/local/tmp/frida-server"
echo "[start_frida] ensuring frida-server on device..."

# Ensure file present and executable
$ADB shell "ls $REMOTE_PATH >/dev/null 2>&1" || {
  echo "[start_frida] pushing $LOCAL_BIN -> $REMOTE_PATH"
  $ADB push "$LOCAL_BIN" "$REMOTE_PATH"
}

# Fix mode
$ADB shell "chmod 755 $REMOTE_PATH" || true

# If emulator -> try adb root to ensure start works
IS_EMU=$($ADB shell 'getprop ro.kernel.qemu' 2>/dev/null | tr -d '\r\n')
if [[ "$IS_EMU" == "1" ]]; then
  echo "[start_frida] device is emulator; running adb root"
  adb root
  sleep 1
fi

# kill existing frida-server if any, then start
echo "[start_frida] killing old frida-server (if any)"
$ADB shell "pkill -f frida-server || true"

echo "[start_frida] starting frida-server as background process"
# start in background. Use nohup if available, else simple background.
$ADB shell "nohup $REMOTE_PATH >/dev/null 2>&1 &" || $ADB shell "$REMOTE_PATH &>/dev/null &"

# verify it's running (pidof may be available)
sleep 0.8
PID=$($ADB shell "pidof frida-server || echo ''" | tr -d '\r\n')
if [[ -n "$PID" ]]; then
  echo "[start_frida] frida-server started with pid $PID"
  exit 0
else
  # fallback: check ps | grep
  PSS=$($ADB shell "ps -A | grep frida-server || true")
  if [[ -n "$PSS" ]]; then
    echo "[start_frida] frida-server appears in process list:"
    echo "$PSS"
    exit 0
  fi
  echo "[start_frida] FAILED to start frida-server"
  exit 2
fi