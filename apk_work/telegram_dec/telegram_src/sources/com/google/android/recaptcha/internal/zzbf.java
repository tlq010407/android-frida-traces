package com.google.android.recaptcha.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.Locale;
import java.util.MissingResourceException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zzbf {
    public static final zzbe zza = new zzbe(null);
    private static zzmo zzb;
    private final String zzc;
    private final zzac zzd;
    private final zznc zze;
    private final long zzf;

    public zzbf(zzbb zzbbVar, String str, zzac zzacVar) {
        this.zzc = str;
        this.zzd = zzacVar;
        zznc zzncVarZzi = zznf.zzi();
        this.zze = zzncVarZzi;
        this.zzf = System.currentTimeMillis();
        zzncVarZzi.zzp(zzbbVar.zza());
        zzncVarZzi.zzd(zzbbVar.zzb());
        zzncVarZzi.zzr(zzbbVar.zzc());
        if (zzbbVar.zzd() != null) {
            zzncVarZzi.zzu(zzbbVar.zzd());
        }
        zzncVarZzi.zzt(zzmg.zzc(zzmg.zzb(System.currentTimeMillis())));
    }

    private static final zzmo zzb(Context context) throws PackageManager.NameNotFoundException {
        int i;
        PackageInfo packageInfo;
        int i2;
        String strValueOf = "unknown";
        String strValueOf2 = (Build.VERSION.SDK_INT < 33 ? (i2 = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("com.google.android.gms.version", -1)) != -1 : (i2 = context.getPackageManager().getApplicationInfo(context.getPackageName(), PackageManager.ApplicationInfoFlags.of(128L)).metaData.getInt("com.google.android.gms.version", -1)) != -1) ? String.valueOf(i2) : "unknown";
        try {
            i = Build.VERSION.SDK_INT;
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (i >= 33) {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        } else {
            if (i < 28) {
                strValueOf = String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
                zzmn zzmnVarZzf = zzmo.zzf();
                zzmnVarZzf.zzd(Build.VERSION.SDK_INT);
                zzmnVarZzf.zzq(strValueOf2);
                zzmnVarZzf.zzs("18.4.0");
                zzmnVarZzf.zzp(Build.MODEL);
                zzmnVarZzf.zzr(Build.MANUFACTURER);
                zzmnVarZzf.zze(strValueOf);
                return (zzmo) zzmnVarZzf.zzj();
            }
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        }
        strValueOf = String.valueOf(packageInfo.getLongVersionCode());
        zzmn zzmnVarZzf2 = zzmo.zzf();
        zzmnVarZzf2.zzd(Build.VERSION.SDK_INT);
        zzmnVarZzf2.zzq(strValueOf2);
        zzmnVarZzf2.zzs("18.4.0");
        zzmnVarZzf2.zzp(Build.MODEL);
        zzmnVarZzf2.zzr(Build.MANUFACTURER);
        zzmnVarZzf2.zze(strValueOf);
        return (zzmo) zzmnVarZzf2.zzj();
    }

    public final zznf zza(int i, zzmr zzmrVar, Context context) {
        String iSO3Language;
        String iSO3Country = "";
        long jCurrentTimeMillis = System.currentTimeMillis() - this.zzf;
        zznc zzncVar = this.zze;
        zzncVar.zze(jCurrentTimeMillis);
        zzncVar.zzv(i);
        if (zzmrVar != null) {
            this.zze.zzq(zzmrVar);
        }
        if (zzb == null) {
            zzb = zzb(context);
        }
        try {
            iSO3Language = Locale.getDefault().getISO3Language();
        } catch (MissingResourceException unused) {
            iSO3Language = "";
        }
        try {
            iSO3Country = Locale.getDefault().getISO3Country();
        } catch (MissingResourceException unused2) {
        }
        zznc zzncVar2 = this.zze;
        String str = this.zzc;
        zznq zznqVarZzf = zznr.zzf();
        zznqVarZzf.zzq(str);
        zzmo zzmoVarZzb = zzb;
        if (zzmoVarZzb == null) {
            zzmoVarZzb = zzb(context);
        }
        zznqVarZzf.zzd(zzmoVarZzb);
        zznqVarZzf.zzp(iSO3Language);
        zznqVarZzf.zze(iSO3Country);
        zzncVar2.zzs((zznr) zznqVarZzf.zzj());
        return (zznf) this.zze.zzj();
    }
}
