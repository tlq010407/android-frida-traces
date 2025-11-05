package com.huawei.hms.locationSdk;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class x extends b0 {
    private static volatile x b;
    private static final byte[] c = new byte[0];

    public static x b() {
        if (b == null) {
            synchronized (c) {
                try {
                    if (b == null) {
                        b = new x();
                    }
                } finally {
                }
            }
        }
        return b;
    }
}
