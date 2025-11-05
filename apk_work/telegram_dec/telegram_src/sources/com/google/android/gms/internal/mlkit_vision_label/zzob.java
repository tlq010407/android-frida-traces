package com.google.android.gms.internal.mlkit_vision_label;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zzob {
    private static zzob zza;

    private zzob() {
    }

    public static synchronized zzob zza() {
        try {
            if (zza == null) {
                zza = new zzob();
            }
        } catch (Throwable th) {
            throw th;
        }
        return zza;
    }
}
