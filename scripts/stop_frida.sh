#!/usr/bin/env bash
set -euo pipefail

DEV=${1:-}
ADB="adb"
if [[ -n "$DEV" ]]; then ADB="adb -s $DEV"; fi

$ADB wait-for-device
echo "[stop_frida] stopping frida-server (if running)"
$ADB shell "pkill -f frida-server || true"
echo "[stop_frida] done"