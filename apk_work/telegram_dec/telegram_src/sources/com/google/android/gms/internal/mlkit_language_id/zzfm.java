package com.google.android.gms.internal.mlkit_language_id;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzfm implements zzgo {
    private static final zzfw zzb = new zzfp();
    private final zzfw zza;

    public zzfm() {
        this(new zzfo(zzep.zza(), zza()));
    }

    private zzfm(zzfw zzfwVar) {
        this.zza = (zzfw) zzeq.zza((Object) zzfwVar, "messageInfoFactory");
    }

    private static zzfw zza() {
        try {
            return (zzfw) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            return zzb;
        }
    }

    private static boolean zza(zzfx zzfxVar) {
        return zzfxVar.zza() == zzgl.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzgo
    public final zzgp zza(Class cls) {
        zzgr.zza(cls);
        zzfx zzfxVarZzb = this.zza.zzb(cls);
        if (zzfxVarZzb.zzb()) {
            return zzeo.class.isAssignableFrom(cls) ? zzgc.zza(zzgr.zzc(), zzeg.zza(), zzfxVarZzb.zzc()) : zzgc.zza(zzgr.zza(), zzeg.zzb(), zzfxVarZzb.zzc());
        }
        if (!zzeo.class.isAssignableFrom(cls)) {
            boolean zZza = zza(zzfxVarZzb);
            zzge zzgeVarZza = zzgg.zza();
            zzfj zzfjVarZza = zzfj.zza();
            return zZza ? zzgd.zza(cls, zzfxVarZzb, zzgeVarZza, zzfjVarZza, zzgr.zza(), zzeg.zzb(), zzfu.zza()) : zzgd.zza(cls, zzfxVarZzb, zzgeVarZza, zzfjVarZza, zzgr.zzb(), null, zzfu.zza());
        }
        boolean zZza2 = zza(zzfxVarZzb);
        zzge zzgeVarZzb = zzgg.zzb();
        zzfj zzfjVarZzb = zzfj.zzb();
        zzhh zzhhVarZzc = zzgr.zzc();
        return zZza2 ? zzgd.zza(cls, zzfxVarZzb, zzgeVarZzb, zzfjVarZzb, zzhhVarZzc, zzeg.zza(), zzfu.zzb()) : zzgd.zza(cls, zzfxVarZzb, zzgeVarZzb, zzfjVarZzb, zzhhVarZzc, null, zzfu.zzb());
    }
}
