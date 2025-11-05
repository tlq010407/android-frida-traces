package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class zzal extends zzb implements zzam {
    public zzal() {
        super("com.google.android.gms.cast.framework.internal.IMediaRouter");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22, types: [int] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.os.Parcel] */
    @Override // com.google.android.gms.internal.cast.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzao zzanVar;
        ?? r3;
        boolean zZzl;
        switch (i) {
            case 1:
                Bundle bundle = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzanVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.internal.IMediaRouterCallback");
                    zzanVar = iInterfaceQueryLocalInterface instanceof zzao ? (zzao) iInterfaceQueryLocalInterface : new zzan(strongBinder);
                }
                zzc.zzb(parcel);
                zze(bundle, zzanVar);
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle bundle2 = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                int i3 = parcel.readInt();
                zzc.zzb(parcel);
                zzd(bundle2, i3);
                parcel2.writeNoException();
                return true;
            case 3:
                Bundle bundle3 = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                zzc.zzb(parcel);
                zzg(bundle3);
                parcel2.writeNoException();
                return true;
            case 4:
                Bundle bundle4 = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                int i4 = parcel.readInt();
                zzc.zzb(parcel);
                boolean zZzm = zzm(bundle4, i4);
                parcel2.writeNoException();
                r3 = zZzm;
                parcel2.writeInt(r3);
                return true;
            case 5:
                String string = parcel.readString();
                zzc.zzb(parcel);
                zzi(string);
                parcel2.writeNoException();
                return true;
            case 6:
                zzh();
                parcel2.writeNoException();
                return true;
            case 7:
                zZzl = zzl();
                parcel2.writeNoException();
                int i5 = zzc.$r8$clinit;
                r3 = zZzl;
                parcel2.writeInt(r3);
                return true;
            case 8:
                String string2 = parcel.readString();
                zzc.zzb(parcel);
                Bundle bundleZzb = zzb(string2);
                parcel2.writeNoException();
                zzc.zzd(parcel2, bundleZzb);
                return true;
            case 9:
                String strZzc = zzc();
                parcel2.writeNoException();
                parcel2.writeString(strZzc);
                return true;
            case 10:
                parcel2.writeNoException();
                r3 = 12451000;
                parcel2.writeInt(r3);
                return true;
            case 11:
                zzf();
                parcel2.writeNoException();
                return true;
            case 12:
                zZzl = zzk();
                parcel2.writeNoException();
                int i52 = zzc.$r8$clinit;
                r3 = zZzl;
                parcel2.writeInt(r3);
                return true;
            case 13:
                int i6 = parcel.readInt();
                zzc.zzb(parcel);
                zzj(i6);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
