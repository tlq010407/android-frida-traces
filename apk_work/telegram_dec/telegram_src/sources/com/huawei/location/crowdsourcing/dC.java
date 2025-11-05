package com.huawei.location.crowdsourcing;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.location.crowdsourcing.Config;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.secure.android.common.intent.SafeIntent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
final class dC implements com.huawei.location.crowdsourcing.common.yn {
    private List FB = new LinkedList();
    private LW LW;
    private final Vw Vw;
    private long yn;

    private static class FB implements Comparator {
        private FB() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            ScanResult scanResult = (ScanResult) obj;
            ScanResult scanResult2 = (ScanResult) obj2;
            long j = scanResult.timestamp - scanResult2.timestamp;
            if (j != 0) {
                return j > 0 ? 1 : -1;
            }
            int iCompareTo = scanResult.level - scanResult2.level;
            return (iCompareTo == 0 && (iCompareTo = scanResult.BSSID.compareTo(scanResult2.BSSID)) == 0) ? scanResult.SSID.compareTo(scanResult2.SSID) : iCompareTo;
        }
    }

    private class LW extends BroadcastReceiver {
        private LW() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String str;
            SafeIntent safeIntent = new SafeIntent(intent);
            String action = safeIntent.getAction();
            if (action == null) {
                str = "get null action";
            } else {
                if (action.equals("android.net.wifi.SCAN_RESULTS")) {
                    boolean booleanExtra = Build.VERSION.SDK_INT >= 23 ? safeIntent.getBooleanExtra("resultsUpdated", false) : true;
                    LogConsole.d("WifiCollector", "onReceive action=" + action + " isUpdated=" + booleanExtra);
                    if (booleanExtra) {
                        Vw vw = dC.this.Vw;
                        vw.getClass();
                        vw.obtainMessage(0, Long.valueOf(System.currentTimeMillis())).sendToTarget();
                        return;
                    }
                    return;
                }
                str = "receive unknown action,action:" + action;
            }
            LogConsole.e("WifiCollector", str);
        }
    }

    private class Vw extends Handler {
        Vw(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 0) {
                LogConsole.e("WifiCollector", "unknown msg:" + message.what);
                return;
            }
            Object obj = message.obj;
            if (obj instanceof Long) {
                dC.yn(dC.this, ((Long) obj).longValue());
            } else {
                LogConsole.e("WifiCollector", "handleMessage not location obj");
            }
        }
    }

    dC(Looper looper) {
        this.Vw = new Vw(looper);
    }

    private boolean Vw(List list) {
        List list2 = this.FB;
        com.huawei.location.crowdsourcing.common.util.yn ynVar = new com.huawei.location.crowdsourcing.common.util.yn() { // from class: com.huawei.location.crowdsourcing.dC$$ExternalSyntheticLambda1
            @Override // com.huawei.location.crowdsourcing.common.util.yn
            public final boolean compare(Object obj, Object obj2) {
                return dC.yn((ScanResult) obj, (ScanResult) obj2);
            }
        };
        if (list2.size() == list.size()) {
            for (Object obj : list2) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (!ynVar.compare(obj, it.next())) {
                    }
                }
            }
            return false;
        }
        this.FB = list;
        return true;
    }

    static void yn(dC dCVar, long j) {
        dCVar.yn = j;
    }

    private void yn(List list) {
        final long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos() / 1000;
        final long jOB = Config.FB.yn.OB();
        com.huawei.location.crowdsourcing.common.util.Vw vw = new com.huawei.location.crowdsourcing.common.util.Vw() { // from class: com.huawei.location.crowdsourcing.dC$$ExternalSyntheticLambda0
            @Override // com.huawei.location.crowdsourcing.common.util.Vw
            public final boolean yn(Object obj) {
                return dC.yn(jElapsedRealtimeNanos, jOB, (ScanResult) obj);
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
    public static /* synthetic */ boolean yn(long j, long j2, ScanResult scanResult) {
        long jAbs = Math.abs(scanResult.timestamp - j);
        if (jAbs <= j2) {
            return false;
        }
        LogConsole.d("WifiCollector", "remove expired(μs). timeDiff:" + jAbs);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean yn(ScanResult scanResult, ScanResult scanResult2) {
        return TextUtils.equals(scanResult.BSSID, scanResult2.BSSID) && scanResult.timestamp == scanResult2.timestamp;
    }

    boolean FB() {
        LW lw = new LW();
        this.LW = lw;
        com.huawei.location.crowdsourcing.Vw.Vw().registerReceiver(lw, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
        LogConsole.i("WifiCollector", "wifi scan finish register success");
        return true;
    }

    List Vw() {
        String str;
        List<ScanResult> scanResults;
        Config config = Config.FB.yn;
        if (!config.a6()) {
            str = "no need get wifi";
        } else if (Math.abs(System.currentTimeMillis() - this.yn) <= Config.FB.yn.EF()) {
            Object systemService = com.huawei.location.crowdsourcing.Vw.Vw().getApplicationContext().getSystemService("wifi");
            if (systemService instanceof WifiManager) {
                scanResults = ((WifiManager) systemService).getScanResults();
            } else {
                LogConsole.d("WifiCollector", "no wifi service");
                scanResults = new ArrayList<>();
            }
            yn(scanResults);
            int iWf = Config.FB.yn.Wf();
            int size = scanResults.size();
            if (size > iWf) {
                LogConsole.d("WifiCollector", "limit ap num from " + size + " to " + iWf);
                Collections.sort(scanResults, new FB());
                scanResults.subList(0, size - iWf).clear();
            }
            if (scanResults.isEmpty()) {
                str = "no available ap info";
            } else {
                if (Vw(scanResults)) {
                    LogConsole.d("WifiCollector", "ap list size." + scanResults.size());
                    config.FB();
                    return this.FB;
                }
                str = "no update";
            }
        } else {
            str = "not fresh";
        }
        LogConsole.d("WifiCollector", str);
        return null;
    }

    @Override // com.huawei.location.crowdsourcing.common.yn
    public void yn() {
        LogConsole.w("WifiCollector", "Stop");
        LW lw = this.LW;
        if (lw != null) {
            com.huawei.location.crowdsourcing.Vw.Vw().unregisterReceiver(lw);
        }
    }
}
