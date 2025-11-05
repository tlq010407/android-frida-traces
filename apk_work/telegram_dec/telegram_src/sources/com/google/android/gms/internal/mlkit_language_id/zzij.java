package com.google.android.gms.internal.mlkit_language_id;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public enum zzij implements zzet {
    UNKNOWN_EVENT_TYPE(0),
    VALIDATION_TEST(1),
    CONTINUOUS_FEEDBACK(2);

    private static final zzes zzd = new zzes() { // from class: com.google.android.gms.internal.mlkit_language_id.zzim
    };
    private final int zze;

    zzij(int i) {
        this.zze = i;
    }

    public static zzev zzb() {
        return zzil.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzij.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zze + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzet
    public final int zza() {
        return this.zze;
    }
}
