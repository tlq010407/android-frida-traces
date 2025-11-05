package com.google.android.gms.internal.vision;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzkb implements zzlf {
    private static final zzkl zzb = new zzka();
    private final zzkl zza;

    public zzkb() {
        this(new zzkd(zzjc.zza(), zza()));
    }

    private zzkb(zzkl zzklVar) {
        this.zza = (zzkl) zzjf.zza((Object) zzklVar, "messageInfoFactory");
    }

    private static zzkl zza() {
        try {
            return (zzkl) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            return zzb;
        }
    }

    private static boolean zza(zzki zzkiVar) {
        return zzkiVar.zza() == zzkz.zza;
    }

    @Override // com.google.android.gms.internal.vision.zzlf
    public final zzlc zza(Class cls) {
        zzle.zza(cls);
        zzki zzkiVarZzb = this.zza.zzb(cls);
        if (zzkiVarZzb.zzb()) {
            return zzjb.class.isAssignableFrom(cls) ? zzkq.zza(zzle.zzc(), zzir.zza(), zzkiVarZzb.zzc()) : zzkq.zza(zzle.zza(), zzir.zzb(), zzkiVarZzb.zzc());
        }
        if (!zzjb.class.isAssignableFrom(cls)) {
            boolean zZza = zza(zzkiVarZzb);
            zzks zzksVarZza = zzku.zza();
            zzju zzjuVarZza = zzju.zza();
            return zZza ? zzko.zza(cls, zzkiVarZzb, zzksVarZza, zzjuVarZza, zzle.zza(), zzir.zzb(), zzkj.zza()) : zzko.zza(cls, zzkiVarZzb, zzksVarZza, zzjuVarZza, zzle.zzb(), (zziq) null, zzkj.zza());
        }
        boolean zZza2 = zza(zzkiVarZzb);
        zzks zzksVarZzb = zzku.zzb();
        zzju zzjuVarZzb = zzju.zzb();
        zzlu zzluVarZzc = zzle.zzc();
        return zZza2 ? zzko.zza(cls, zzkiVarZzb, zzksVarZzb, zzjuVarZzb, zzluVarZzc, zzir.zza(), zzkj.zzb()) : zzko.zza(cls, zzkiVarZzb, zzksVarZzb, zzjuVarZzb, zzluVarZzc, (zziq) null, zzkj.zzb());
    }
}
