package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.credential.Credential;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class e {
    public static e a(Credential credential) {
        return credential.getKekVersion() == 3 ? new f() : new g();
    }

    public abstract byte[] a(Credential credential, Context context);

    public void b(Credential credential, Context context) {
        String kekString = credential.getKekString();
        if (a.a.containsKey(kekString)) {
            return;
        }
        byte[] bArrA = a(credential, context);
        if (TextUtils.isEmpty(kekString) || bArrA == null) {
            LogUcs.e("KekStore", "putKek param is null.", new Object[0]);
            throw new UcsException(1001L, "putKek param is null.");
        }
        a.a.put(kekString, bArrA);
    }
}
