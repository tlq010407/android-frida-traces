package com.google.android.gms.internal.play_billing;

import com.huawei.hms.framework.common.ContainerUtils;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzv {
    private final Object zza;
    private final Object zzb;
    private final Object zzc;

    zzv(Object obj, Object obj2, Object obj3) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = obj3;
    }

    final IllegalArgumentException zza() {
        return new IllegalArgumentException("Multiple entries with same key: " + String.valueOf(this.zza) + ContainerUtils.KEY_VALUE_DELIMITER + String.valueOf(this.zzb) + " and " + String.valueOf(this.zza) + ContainerUtils.KEY_VALUE_DELIMITER + String.valueOf(this.zzc));
    }
}
