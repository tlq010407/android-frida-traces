package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.internal.cast.zzb;
import com.google.android.gms.internal.cast.zzc;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class zzaf extends zzb implements zzag {
    public zzaf() {
        super("com.google.android.gms.cast.framework.ICastConnectionController");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String string = parcel.readString();
            String string2 = parcel.readString();
            zzc.zzb(parcel);
            zzc(string, string2);
        } else if (i == 2) {
            String string3 = parcel.readString();
            LaunchOptions launchOptions = (LaunchOptions) zzc.zza(parcel, LaunchOptions.CREATOR);
            zzc.zzb(parcel);
            zzd(string3, launchOptions);
        } else if (i == 3) {
            String string4 = parcel.readString();
            zzc.zzb(parcel);
            zze(string4);
        } else {
            if (i != 4) {
                if (i != 5) {
                    return false;
                }
                parcel2.writeNoException();
                parcel2.writeInt(12451000);
                return true;
            }
            int i3 = parcel.readInt();
            zzc.zzb(parcel);
            zzb(i3);
        }
        parcel2.writeNoException();
        return true;
    }
}
