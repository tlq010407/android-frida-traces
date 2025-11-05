package com.google.android.recaptcha.internal;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzjw implements zzks {
    private static final zzkc zza = new zzju();
    private final zzkc zzb;

    public zzjw() {
        zzkc zzkcVar;
        zzim zzimVarZza = zzim.zza();
        try {
            zzkcVar = (zzkc) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            zzkcVar = zza;
        }
        zzjv zzjvVar = new zzjv(zzimVarZza, zzkcVar);
        byte[] bArr = zzjc.zzd;
        this.zzb = zzjvVar;
    }

    private static boolean zzb(zzkb zzkbVar) {
        return zzkbVar.zzc() + (-1) != 1;
    }

    @Override // com.google.android.recaptcha.internal.zzks
    public final zzkr zza(Class cls) {
        zzkk zzkkVarZza;
        zzjs zzjsVarZzd;
        zzll zzllVarZzm;
        zzif zzifVarZza;
        zzjz zzjzVarZza;
        zzll zzllVarZzm2;
        zzif zzifVarZza2;
        zzkt.zzs(cls);
        zzkb zzkbVarZzb = this.zzb.zzb(cls);
        if (zzkbVarZzb.zzb()) {
            if (zzit.class.isAssignableFrom(cls)) {
                zzllVarZzm2 = zzkt.zzn();
                zzifVarZza2 = zzih.zzb();
            } else {
                zzllVarZzm2 = zzkt.zzm();
                zzifVarZza2 = zzih.zza();
            }
            return zzki.zzc(zzllVarZzm2, zzifVarZza2, zzkbVarZzb.zza());
        }
        if (zzit.class.isAssignableFrom(cls)) {
            boolean zZzb = zzb(zzkbVarZzb);
            zzkkVarZza = zzkl.zzb();
            zzjsVarZzd = zzjs.zze();
            zzllVarZzm = zzkt.zzn();
            zzifVarZza = zZzb ? zzih.zzb() : null;
            zzjzVarZza = zzka.zzb();
        } else {
            boolean zZzb2 = zzb(zzkbVarZzb);
            zzkkVarZza = zzkl.zza();
            zzjsVarZzd = zzjs.zzd();
            zzllVarZzm = zzkt.zzm();
            zzifVarZza = zZzb2 ? zzih.zza() : null;
            zzjzVarZza = zzka.zza();
        }
        return zzkh.zzm(cls, zzkbVarZzb, zzkkVarZza, zzjsVarZzd, zzllVarZzm, zzifVarZza, zzjzVarZza);
    }
}
