package com.huawei.hms.locationSdk;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class z extends b0 {
    private static volatile z b;
    private static final byte[] c = new byte[0];

    public static z b() {
        if (b == null) {
            synchronized (c) {
                try {
                    if (b == null) {
                        b = new z();
                    }
                } finally {
                }
            }
        }
        return b;
    }
}
