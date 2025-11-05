package com.google.android.gms.internal.vision;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzmg extends IllegalArgumentException {
    zzmg(int i, int i2) {
        StringBuilder sb = new StringBuilder(54);
        sb.append("Unpaired surrogate at index ");
        sb.append(i);
        sb.append(" of ");
        sb.append(i2);
        super(sb.toString());
    }
}
