#!/usr/bin/env python3
# frida_log_to_csv.py
# 用法:
#   python3 /Users/liqi/android-frida-traces/tools/frida_log_to_csv.py ~/android-frida-traces/logs/telegram_java_hook.log > telegram_java_hook.csv

import sys
import re
import csv
import json
from datetime import datetime

if len(sys.argv) < 2:
    print("Usage: frida_log_to_csv.py <frida_log_file>", file=sys.stderr)
    sys.exit(2)

fn = sys.argv[1]
out = csv.writer(sys.stdout)
out.writerow(["timestamp","category","method","event","args","ret","raw"])

# Patterns we expect (examples in your log):
# [+] org.telegram.SQLite.SQLitePreparedStatement.prepare called with: ["-5476...","SELECT ..."]
# [+] org.telegram.SQLite.SQLitePreparedStatement.prepare => -547637...
# Also handle "native onEnter" lines from native hooks

re_called = re.compile(r'^\[([+\-])\]\s+([^\s]+)\s+called with:\s*(.*)$')
re_ret = re.compile(r'^\[([+\-])\]\s+([^\s]+)\s+=>\s*(.*)$')
re_native_enter = re.compile(r'^\[\*\]\s+native onEnter:\s*(.*)$')
re_native_named = re.compile(r'^\[\+\]\s+attached native symbol:\s*(.*)$')
re_generic = re.compile(r'^\[([+\-\*])\]\s+(.*)$')

def try_parse_args(s):
    s = s.strip()
    # if it looks like JSON array, try json.loads
    if s.startswith('[') or s.startswith('{'):
        try:
            return json.dumps(json.loads(s), ensure_ascii=False)
        except Exception:
            return s
    return s

with open(fn, 'r', encoding='utf-8', errors='ignore') as f:
    for line in f:
        line=line.rstrip("\n")
        ts = datetime.utcnow().isoformat() + "Z"
        m = re_called.match(line)
        if m:
            cat="call"
            method = m.group(2)
            args = try_parse_args(m.group(3))
            out.writerow([ts, cat, method, "enter", args, "", line])
            continue
        m = re_ret.match(line)
        if m:
            cat="ret"
            method = m.group(2)
            ret = m.group(3).strip()
            out.writerow([ts, cat, method, "ret", "", ret, line])
            continue
        # native onEnter fallback
        m = re_native_enter.match(line)
        if m:
            out.writerow([ts, "native", m.group(1), "enter", "", "", line])
            continue
        m = re_native_named.match(line)
        if m:
            out.writerow([ts, "native_attached", m.group(1), "info", "", "", line])
            continue
        # generic fallback: write raw
        gm = re_generic.match(line)
        if gm:
            out.writerow([ts, "log", gm.group(2), "log", "", "", line])
        else:
            out.writerow([ts, "raw", "", "raw", "", "", line])