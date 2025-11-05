package com.android.billingclient.api;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zzbc {
    private boolean zza;

    /* synthetic */ zzbc(zzbb zzbbVar) {
    }

    public final zzbc zza() {
        this.zza = true;
        return this;
    }

    public final zzbe zzb() {
        if (this.zza) {
            return new zzbe(true, false, null);
        }
        throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
    }
}
