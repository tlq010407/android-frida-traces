#!/usr/bin/env python3
# analyze_frida_csv.py
import csv,sys,json,collections,datetime
if len(sys.argv) < 2:
    print("Usage: analyze_frida_csv.py file.csv", file=sys.stderr); sys.exit(1)
fn = sys.argv[1]
stats = {}
order = []
with open(fn, newline='', encoding='utf-8', errors='ignore') as f:
    r = csv.reader(f)
    header = next(r, None)
    for row in r:
        if len(row) < 4: continue
        ts, category, method, event, args, ret, raw = row[0], row[1], row[2], row[3], row[4], row[5], row[6]
        if method not in stats:
            stats[method] = {"calls":0,"rets":0,"first":ts,"last":ts}
            order.append(method)
        if event == "enter":
            stats[method]["calls"] += 1
        elif event == "ret":
            stats[method]["rets"] += 1
        # update time bounds
        stats[method]["last"] = ts
        if stats[method]["first"] == "" or ts < stats[method]["first"]:
            stats[method]["first"] = ts

# top 40 by calls
top = sorted(stats.items(), key=lambda kv: kv[1]["calls"], reverse=True)[:40]
out = [{"method":k, **v} for k,v in top]
print(json.dumps({"top": out, "total_methods": len(stats)}, ensure_ascii=False, indent=2))