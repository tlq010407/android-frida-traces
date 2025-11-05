package com.google.android.gms.internal.safetynet;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zzh extends zza implements IInterface {
    zzh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.safetynet.internal.ISafetyNetService");
    }

    public final void zzc(zzg zzgVar, byte[] bArr, String str) {
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, zzgVar);
        parcelZza.writeByteArray(bArr);
        parcelZza.writeString(str);
        zzb(7, parcelZza);
    }
}
