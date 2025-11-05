package com.google.android.recaptcha.internal;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class zzio extends zzin implements zzkf {
    protected zzio(zzip zzipVar) {
        super(zzipVar);
    }

    @Override // com.google.android.recaptcha.internal.zzin, com.google.android.recaptcha.internal.zzkd
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzip zzk() {
        zzit zzitVarZzk;
        if (((zzip) this.zza).zzG()) {
            ((zzip) this.zza).zzb.zzg();
            zzitVarZzk = super.zzk();
        } else {
            zzitVarZzk = this.zza;
        }
        return (zzip) zzitVarZzk;
    }

    @Override // com.google.android.recaptcha.internal.zzin
    protected final void zzn() {
        super.zzn();
        if (((zzip) this.zza).zzb != zzij.zzd()) {
            zzip zzipVar = (zzip) this.zza;
            zzipVar.zzb = zzipVar.zzb.clone();
        }
    }
}
