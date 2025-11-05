package com.google.android.gms.internal.cast;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzup implements zzvj {
    private static final zzuv zza = new zzun();
    private final zzuv zzb;

    public zzup() {
        zzuv zzuvVar;
        zztl zztlVarZza = zztl.zza();
        try {
            zzuvVar = (zzuv) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            zzuvVar = zza;
        }
        zzuo zzuoVar = new zzuo(zztlVarZza, zzuvVar);
        byte[] bArr = zzty.zzd;
        this.zzb = zzuoVar;
    }

    private static boolean zzb(zzuu zzuuVar) {
        return zzuuVar.zzc() + (-1) != 1;
    }

    @Override // com.google.android.gms.internal.cast.zzvj
    public final zzvi zza(Class cls) {
        zzvc zzvcVarZza;
        zzul zzulVarZzc;
        zzvz zzvzVarZzm;
        zztf zztfVarZza;
        zzus zzusVarZza;
        zzvz zzvzVarZzm2;
        zztf zztfVarZza2;
        zzvk.zzp(cls);
        zzuu zzuuVarZzb = this.zzb.zzb(cls);
        if (zzuuVarZzb.zzb()) {
            if (zztp.class.isAssignableFrom(cls)) {
                zzvzVarZzm2 = zzvk.zzn();
                zztfVarZza2 = zzth.zzb();
            } else {
                zzvzVarZzm2 = zzvk.zzm();
                zztfVarZza2 = zzth.zza();
            }
            return zzvb.zzi(zzvzVarZzm2, zztfVarZza2, zzuuVarZzb.zza());
        }
        if (zztp.class.isAssignableFrom(cls)) {
            boolean zZzb = zzb(zzuuVarZzb);
            zzvcVarZza = zzvd.zzb();
            zzulVarZzc = zzul.zzd();
            zzvzVarZzm = zzvk.zzn();
            zztfVarZza = zZzb ? zzth.zzb() : null;
            zzusVarZza = zzut.zzb();
        } else {
            boolean zZzb2 = zzb(zzuuVarZzb);
            zzvcVarZza = zzvd.zza();
            zzulVarZzc = zzul.zzc();
            zzvzVarZzm = zzvk.zzm();
            zztfVarZza = zZzb2 ? zzth.zza() : null;
            zzusVarZza = zzut.zza();
        }
        return zzva.zzi(cls, zzuuVarZzb, zzvcVarZza, zzulVarZzc, zzvzVarZzm, zztfVarZza, zzusVarZza);
    }
}
