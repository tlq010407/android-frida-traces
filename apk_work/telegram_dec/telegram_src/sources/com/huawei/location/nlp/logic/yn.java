package com.huawei.location.nlp.logic;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.huawei.location.lite.common.config.ConfigManager;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    private static volatile yn Vw;
    private static final byte[] yn = new byte[0];
    private long FB;
    private long LW;
    private List dC = new ArrayList();
    private List E5 = new ArrayList();
    private long d2 = 0;
    private long zp = 0;

    private yn() {
        this.FB = 30000L;
        this.LW = 30000L;
        String config = ConfigManager.getInstance().getConfig("location", "valid_wifi_position_time");
        if (!TextUtils.isEmpty(config)) {
            LogConsole.d("NLPCacheManger", "get valid wifi time " + config);
            this.FB = TimeUnit.SECONDS.toMillis((long) Integer.parseInt(config));
        }
        String config2 = ConfigManager.getInstance().getConfig("location", "valid_cell_position_time");
        if (TextUtils.isEmpty(config2)) {
            return;
        }
        LogConsole.d("NLPCacheManger", "get valid cell time " + config2);
        this.LW = TimeUnit.SECONDS.toMillis((long) Integer.parseInt(config2));
    }

    public static yn dC() {
        if (Vw == null) {
            synchronized (yn) {
                try {
                    if (Vw == null) {
                        Vw = new yn();
                    }
                } finally {
                }
            }
        }
        return Vw;
    }

    public List E5() {
        return this.E5;
    }

    public synchronized List FB() {
        return this.dC;
    }

    public synchronized long LW() {
        return this.zp;
    }

    public void Vw(Pair pair) {
        this.d2 = ((Long) pair.first).longValue();
        this.E5 = (List) pair.second;
    }

    public boolean Vw() {
        List list = this.E5;
        if (list != null && !list.isEmpty()) {
            return SystemClock.elapsedRealtime() - this.d2 < this.FB;
        }
        LogConsole.e("NLPCacheManger", "wifiInfoList is empty");
        return false;
    }

    public long d2() {
        return TimeUnit.MILLISECONDS.toNanos(this.d2);
    }

    public synchronized void yn(Pair pair) {
        this.zp = ((Long) pair.first).longValue();
        this.dC = (List) pair.second;
    }

    public synchronized boolean yn() {
        List list = this.dC;
        if (list != null && !list.isEmpty()) {
            return SystemClock.elapsedRealtime() - (this.zp / 1000000) < this.LW;
        }
        LogConsole.e("NLPCacheManger", "cellInfoList is empty");
        return false;
    }
}
