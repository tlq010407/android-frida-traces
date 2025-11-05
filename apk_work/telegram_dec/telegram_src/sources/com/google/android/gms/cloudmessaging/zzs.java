package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import com.huawei.hms.push.constant.RemoteMessageConst;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzs extends zzq {
    zzs(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.zzq
    final void zza(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(RemoteMessageConst.DATA);
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        zza((Object) bundle2);
    }

    @Override // com.google.android.gms.cloudmessaging.zzq
    final boolean zza() {
        return false;
    }
}
