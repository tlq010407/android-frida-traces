package com.google.android.recaptcha.internal;

import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.text.StringsKt__StringsKt;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zzu implements Comparable {
    private int zza;
    private long zzb;
    private long zzc;

    public final String toString() {
        return "avgExecutionTime: " + StringsKt__StringsKt.padEnd$default(String.valueOf(this.zzb / this.zza), 10, (char) 0, 2, null) + " us| maxExecutionTime: " + StringsKt__StringsKt.padEnd$default(String.valueOf(this.zzc), 10, (char) 0, 2, null) + " us| totalTime: " + StringsKt__StringsKt.padEnd$default(String.valueOf(this.zzb), 10, (char) 0, 2, null) + " us| #Usages: " + StringsKt__StringsKt.padEnd$default(String.valueOf(this.zza), 5, (char) 0, 2, null);
    }

    @Override // java.lang.Comparable
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzu zzuVar) {
        return ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(this.zzb), Long.valueOf(zzuVar.zzb));
    }

    public final int zzb() {
        return this.zza;
    }

    public final long zzc() {
        return this.zzc;
    }

    public final long zzd() {
        return this.zzb;
    }

    public final void zze(long j) {
        this.zzc = j;
    }

    public final void zzf(long j) {
        this.zzb = j;
    }

    public final void zzg(int i) {
        this.zza = i;
    }
}
