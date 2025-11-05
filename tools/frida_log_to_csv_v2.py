#!/usr/bin/env python3
# frida_log_to_csv_v2.py -- 替换版（使用 timezone-aware 时间戳，兼容 Python 将来的变更）
# python3 ~/android-frida-traces/tools/analyze_frida_csv.py ~/android-frida-traces/logs/telegram_java.csv ~/android-frida-traces/logs/telegram_Java_summary.json
import sys
import re
import csv
import json
from datetime import datetime, timezone

if len(sys.argv) < 2:
    print("Usage: frida_log_to_csv_v2.py <frida_log_file>", file=sys.stderr)
    sys.exit(2)

fn = sys.argv[1]
out = csv.writer(sys.stdout)
out.writerow(["timestamp","category","method","event","args","ret","raw"])

re_called = re.compile(r'^\[([+\-])\]\s+([^\s]+)\s+called with:\s*(.*)$')
re_ret = re.compile(r'^\[([+\-])\]\s+([^\s]+)\s+=>\s*(.*)$')
re_native_enter = re.compile(r'^\[\*\]\s+native onEnter:\s*(.*)$')
re_native_named = re.compile(r'^\[\+\]\s+attached native symbol:\s*(.*)$')
re_generic = re.compile(r'^\[([+\-\*])\]\s+(.*)$')

def try_parse_args(s):
    s = s.strip()
    if not s:
        return ""
    if (s.startswith('[') and s.endswith(']')) or (s.startswith('{') and s.endswith('}')):
        try:
            return json.dumps(json.loads(s), ensure_ascii=False)
        except Exception:
            return s
    return s

with open(fn, 'r', encoding='utf-8', errors='ignore') as f:
    for line in f:
        line = line.rstrip("\n")
        ts = datetime.now(timezone.utc).isoformat()
        m = re_called.match(line)
        if m:
            method = m.group(2)
            args = try_parse_args(m.group(3))
            out.writerow([ts, "call", method, "enter", args, "", line])
            continue
        m = re_ret.match(line)
        if m:
            method = m.group(2)
            ret = m.group(3).strip()
            out.writerow([ts, "ret", method, "ret", "", ret, line])
            continue
        m = re_native_enter.match(line)
        if m:
            out.writerow([ts, "native", m.group(1), "enter", "", "", line])
            continue
        m = re_native_named.match(line)
        if m:
            out.writerow([ts, "native_attached", m.group(1), "info", "", "", line])
            continue
        gm = re_generic.match(line)
        if gm:
            out.writerow([ts, "log", gm.group(2), "log", "", "", line])
        else:
            out.writerow([ts, "raw", "", "raw", "", "", line])