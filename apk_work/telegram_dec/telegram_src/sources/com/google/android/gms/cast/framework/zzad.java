package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.cast.zzb;
import com.google.android.gms.internal.cast.zzc;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class zzad extends zzb implements zzae {
    public zzad() {
        super("com.google.android.gms.cast.framework.IAppVisibilityListener");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i == 2) {
                zzd();
            } else if (i == 3) {
                zzc();
            } else {
                if (i != 4) {
                    return false;
                }
                parcel2.writeNoException();
                parcel2.writeInt(12451000);
            }
            parcel2.writeNoException();
        } else {
            IObjectWrapper iObjectWrapperZzb = zzb();
            parcel2.writeNoException();
            zzc.zze(parcel2, iObjectWrapperZzb);
        }
        return true;
    }
}
