package com.google.android.gms.internal.play_billing;

import java.io.IOException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class zzak implements zzdf {
    protected int zza = 0;

    abstract int zza(zzdp zzdpVar);

    public final byte[] zzc() {
        try {
            int iZze = zze();
            byte[] bArr = new byte[iZze];
            zzbi zzbiVarZzz = zzbi.zzz(bArr, 0, iZze);
            zzr(zzbiVarZzz);
            zzbiVarZzz.zzA();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e);
        }
    }
}
