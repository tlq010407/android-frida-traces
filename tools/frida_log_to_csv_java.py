#!/usr/bin/env python3
# frida_log_to_csv.py
# Parse frida script logs (verbose safeLog output) into CSV rows.
# Usage:
#   python3 /Users/liqi/android-frida-traces/tools/frida_log_to_csv_java.py /Users/liqi/android-frida-traces/logs/telegram_java_hook.log > /Users/liqi/android-frida-traces/logs/telegram_java_hook.csv

from __future__ import annotations
import sys
import re
import csv
import json
from datetime import datetime, timezone

if len(sys.argv) < 2:
    print("Usage: frida_log_to_csv.py <frida_log_file>", file=sys.stderr)
    sys.exit(2)

infile = sys.argv[1]

# Regex helpers
RE_BRACKET = re.compile(r'^\[(?P<level>[^\]]+)\]\s*(?P<body>.*)$')
RE_CALLED = re.compile(r'^(?P<m>[^\s]+)\s+called with:\s*(?P<args>.*)$')
RE_RET = re.compile(r'^(?P<m>[^\s]+)\s+=>\s*(?P<ret>.*)$')
RE_NATIVE_ENTER = re.compile(r'^(?:native onEnter:|onEnter:)\s*(?P<rest>.*)$', re.I)
RE_NATIVE_ATTACHED = re.compile(r'^(?:attached native symbol:)\s*(?P<rest>.*)$', re.I)
RE_GENERIC_METHOD = re.compile(r'^(?P<m>[A-Za-z0-9_\$\.<>]+)(?:\s+(?P<rest>.*))?$')

def utcnow_iso():
    # ISO 8601 with UTC timezone, normalized to 'Z'
    return datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")

def try_parse_args(s: str):
    s = s.strip()
    if not s:
        return ""
    # If it looks like a JSON array/object, try to parse
    if (s.startswith('[') and s.endswith(']')) or (s.startswith('{') and s.endswith('}')):
        try:
            j = json.loads(s)
            return json.dumps(j, ensure_ascii=False)
        except Exception:
            pass
    # If it looks like a Python-like repr of list e.g. '["a","b"]' try json anyway
    try:
        if (s[0] in "['\"" and s[-1] in "']\"") and ('"' in s or "'" in s):
            # best-effort: return as-is
            return s
    except Exception:
        pass
    return s

# Read lines and accumulate entries; continuation lines (not starting with '[') will be appended to previous raw
rows = []
last = None

with open(infile, "r", encoding="utf-8", errors="ignore") as fh:
    for raw_line in fh:
        line = raw_line.rstrip("\n")
        if not line:
            # blank lines appended to previous raw if exists
            if last is not None:
                last['raw'] += "\n"
            continue

        m = RE_BRACKET.match(line)
        if not m:
            # continuation of previous line (likely a stack trace)
            if last is not None:
                last['raw'] += "\n" + line
                # also append to details for convenience
                if last.get('details'):
                    last['details'] += "\n" + line
                else:
                    last['details'] = (last.get('details') or "") + "\n" + line
            else:
                # orphaned line: emit as a generic row
                rows.append({
                    "timestamp_utc": utcnow_iso(),
                    "level": "",
                    "category": "orphan",
                    "class_method": "",
                    "event": "raw",
                    "args": "",
                    "ret": "",
                    "details": "",
                    "raw": line
                })
            continue

        level = m.group("level").strip()
        body = m.group("body").strip()

        # Prepare base record
        rec = {
            "timestamp_utc": utcnow_iso(),
            "level": level,
            "category": "",
            "class_method": "",
            "event": "",
            "args": "",
            "ret": "",
            "details": "",
            "raw": line
        }

        # Try to match common patterns
        mc = RE_CALLED.match(body)
        if mc:
            rec["event"] = "enter"
            rec["class_method"] = mc.group("m")
            rec["args"] = try_parse_args(mc.group("args") or "")
            rec["category"] = "call"
            rows.append(rec)
            last = rec
            continue

        mr = RE_RET.match(body)
        if mr:
            rec["event"] = "return"
            rec["class_method"] = mr.group("m")
            rec["ret"] = mr.group("ret").strip()
            rec["category"] = "ret"
            rows.append(rec)
            last = rec
            continue

        mn = RE_NATIVE_ENTER.match(body)
        if mn:
            rec["event"] = "native_enter"
            rec["details"] = mn.group("rest").strip()
            rec["category"] = "native"
            rows.append(rec)
            last = rec
            continue

        ma = RE_NATIVE_ATTACHED.match(body)
        if ma:
            rec["event"] = "native_attached"
            rec["details"] = ma.group("rest").strip()
            rec["category"] = "native"
            rows.append(rec)
            last = rec
            continue

        # Generic method-like: "<Class>.<method> <rest>"
        mg = RE_GENERIC_METHOD.match(body)
        if mg:
            rec["class_method"] = mg.group("m")
            rest = mg.group("rest") or ""
            # if rest begins with common HTTP verb or path, mark it
            if rest:
                rec["details"] = rest
                # heuristics for event type
                if "openConnection" in rec["class_method"] or "Url" in rec["class_method"] or rec["class_method"].lower().endswith("newcall"):
                    rec["event"] = "net"
                    rec["category"] = "network"
                else:
                    rec["event"] = "info"
                    rec["category"] = ""
            else:
                rec["event"] = "info"
                rec["category"] = ""
            rows.append(rec)
            last = rec
            continue

        # Fallback: write as generic log
        rec["event"] = "log"
        rec["details"] = body
        rec["category"] = "log"
        rows.append(rec)
        last = rec

# Write CSV
writer = csv.writer(sys.stdout)
header = ["timestamp_utc","level","category","class_method","event","args","ret","details","raw"]
writer.writerow(header)
for r in rows:
    writer.writerow([
        r.get("timestamp_utc",""),
        r.get("level",""),
        r.get("category",""),
        r.get("class_method",""),
        r.get("event",""),
        r.get("args",""),
        r.get("ret",""),
        r.get("details",""),
        r.get("raw","")
    ])