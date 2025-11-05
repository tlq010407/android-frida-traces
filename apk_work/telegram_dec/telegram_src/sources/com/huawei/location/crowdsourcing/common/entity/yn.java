package com.huawei.location.crowdsourcing.common.entity;

import android.os.SystemClock;
import android.telephony.CellInfo;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    private static boolean yn;
    private final CellInfo FB;
    private final long Vw;

    static {
        LogConsole.i("CellWrapper", "nano time delay:" + (SystemClock.elapsedRealtimeNanos() - System.nanoTime()));
        yn = true;
    }

    yn(CellInfo cellInfo, long j) {
        this.FB = cellInfo;
        this.Vw = j;
    }

    public static List yn(List list) {
        long j;
        if (!yn || list.isEmpty()) {
            j = 0;
        } else {
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            long jNanoTime = System.nanoTime();
            j = jElapsedRealtimeNanos - jNanoTime;
            if (j > 100000000000L) {
                LogConsole.d("CellWrapper", "detect nano");
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (((CellInfo) it.next()).getTimeStamp() > jNanoTime) {
                        LogConsole.i("CellWrapper", "close nano detect");
                        yn = false;
                        break;
                    }
                }
                if (yn) {
                    LogConsole.d("CellWrapper", "use nano. diff:" + j);
                }
            } else {
                LogConsole.d("CellWrapper", "not detect nano. diff:" + j);
            }
            j = 0;
        }
        LinkedList linkedList = new LinkedList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            linkedList.add(new yn((CellInfo) it2.next(), j));
        }
        return linkedList;
    }

    public CellInfo Vw() {
        return this.FB;
    }

    public long yn() {
        return this.FB.getTimeStamp() + this.Vw;
    }
}
