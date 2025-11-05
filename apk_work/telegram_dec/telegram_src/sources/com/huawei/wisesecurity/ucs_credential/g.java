package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import com.huawei.wisesecurity.ucs.credential.Credential;
import com.huawei.wisesecurity.ucs.credential.nativelib.UcsLib;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class g extends e {
    @Override // com.huawei.wisesecurity.ucs_credential.e
    public byte[] a(Credential credential, Context context) {
        return UcsLib.decryptKek(credential.getKekBytes(), credential.getAlg());
    }
}
