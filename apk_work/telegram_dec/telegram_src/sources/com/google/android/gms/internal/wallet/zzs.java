package com.google.android.gms.internal.wallet;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.wallet.IsReadyToPayRequest;
import com.google.android.gms.wallet.PaymentDataRequest;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zzs extends zza implements IInterface {
    zzs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.wallet.internal.IOwService");
    }

    public final void zze(IsReadyToPayRequest isReadyToPayRequest, Bundle bundle, zzu zzuVar) {
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, isReadyToPayRequest);
        zzc.zzb(parcelZza, bundle);
        zzc.zzc(parcelZza, zzuVar);
        zzb(14, parcelZza);
    }

    public final void zzf(PaymentDataRequest paymentDataRequest, Bundle bundle, zzu zzuVar) {
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, paymentDataRequest);
        zzc.zzb(parcelZza, bundle);
        zzc.zzc(parcelZza, zzuVar);
        zzb(19, parcelZza);
    }
}
