package com.huawei.location.crowdsourcing;

import android.os.SystemClock;
import com.huawei.location.crowdsourcing.Config;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.PermissionUtil;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
final class yn implements com.huawei.location.crowdsourcing.common.yn {
    private List Vw = new LinkedList();
    private long yn;

    yn() {
    }

    private static void yn(List list) {
        final long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        final long jD2 = Config.FB.yn.d2();
        com.huawei.location.crowdsourcing.common.util.Vw vw = new com.huawei.location.crowdsourcing.common.util.Vw() { // from class: com.huawei.location.crowdsourcing.yn$$ExternalSyntheticLambda0
            @Override // com.huawei.location.crowdsourcing.common.util.Vw
            public final boolean yn(Object obj) {
                return yn.yn(jElapsedRealtimeNanos, jD2, (com.huawei.location.crowdsourcing.common.entity.yn) obj);
            }
        };
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (vw.yn(it.next())) {
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean yn(long j, long j2, com.huawei.location.crowdsourcing.common.entity.yn ynVar) {
        long jAbs = Math.abs(ynVar.yn() - j);
        if (jAbs <= j2) {
            return false;
        }
        LogConsole.d("CellCollector", "remove expired(ns). timeDiff:" + jAbs);
        return true;
    }

    List Vw() {
        List listYn;
        String str;
        Config config = Config.FB.yn;
        if (config.t6()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (Math.abs(jCurrentTimeMillis - this.yn) < config.E5()) {
                str = "collect interval check failed";
            } else {
                if (PermissionUtil.checkSelfPermission(Vw.Vw(), "android.permission.ACCESS_FINE_LOCATION")) {
                    listYn = com.huawei.location.crowdsourcing.common.entity.yn.yn(com.huawei.location.crowdsourcing.common.util.dC.yn(Vw.Vw()));
                } else {
                    LogConsole.e("CellCollector", "check permission failed");
                    listYn = new LinkedList();
                }
                yn(listYn);
                if (!listYn.isEmpty()) {
                    this.Vw = listYn;
                    LogConsole.d("CellCollector", "cell list size." + listYn.size());
                    this.yn = jCurrentTimeMillis;
                    config.Vw();
                    return this.Vw;
                }
                str = "no available cell info";
            }
        } else {
            str = "no need get cell";
        }
        LogConsole.d("CellCollector", str);
        return null;
    }

    @Override // com.huawei.location.crowdsourcing.common.yn
    public void yn() {
        LogConsole.w("CellCollector", "Stop");
    }
}
