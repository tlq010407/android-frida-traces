package com.huawei.hms.stats;

import com.huawei.hms.support.log.HMSLog;
import com.huawei.wisesecurity.ucs.credential.outer.Selector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class c {
    public static final Object a = new Object();
    public static boolean b = false;
    public static boolean c = false;

    public static boolean a() {
        synchronized (a) {
            if (!b) {
                try {
                    Class.forName(Selector.HA_FEATURE_CLASS);
                } catch (ClassNotFoundException unused) {
                    HMSLog.i("HianalyticsExist", "In isHianalyticsExist, Failed to find class HiAnalyticsConfig.");
                }
                b = true;
                HMSLog.i("HianalyticsExist", "hianalytics exist: " + c);
            }
        }
        return c;
    }
}
