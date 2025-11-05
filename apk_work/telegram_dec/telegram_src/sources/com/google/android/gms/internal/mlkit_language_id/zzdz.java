package com.google.android.gms.internal.mlkit_language_id;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class zzdz {
    private int zza;
    private int zzb;
    private boolean zzc;

    private zzdz() {
        this.zza = 100;
        this.zzb = Integer.MAX_VALUE;
        this.zzc = false;
    }

    static zzdz zza(byte[] bArr, int i, int i2, boolean z) {
        zzeb zzebVar = new zzeb(bArr, i2);
        try {
            zzebVar.zza(i2);
            return zzebVar;
        } catch (zzez e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract int zza();

    public abstract int zza(int i);
}
