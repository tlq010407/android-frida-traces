package com.google.android.gms.internal.vision;

import java.util.Arrays;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzhx implements zzhz {
    private zzhx() {
    }

    /* synthetic */ zzhx(zzhs zzhsVar) {
        this();
    }

    @Override // com.google.android.gms.internal.vision.zzhz
    public final byte[] zza(byte[] bArr, int i, int i2) {
        return Arrays.copyOfRange(bArr, i, i2 + i);
    }
}
