package com.google.android.gms.internal.mlkit_vision_label;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public enum zzkd implements zzck {
    TYPE_UNKNOWN(0),
    TYPE_THIN(1),
    TYPE_THICK(2),
    TYPE_GMV(3);

    private final int zzf;

    zzkd(int i) {
        this.zzf = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzck
    public final int zza() {
        return this.zzf;
    }
}
