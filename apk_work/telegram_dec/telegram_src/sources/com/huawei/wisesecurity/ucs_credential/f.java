package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.credential.Credential;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class f extends e {
    @Override // com.huawei.wisesecurity.ucs_credential.e
    public byte[] a(Credential credential, Context context) throws UcsException {
        try {
            byte[] bArrA = c0.a().a("ucs_alias_rootKey", credential.getKekBytes());
            if (bArrA != null && bArrA.length != 0) {
                return bArrA;
            }
            c0.c(context);
            LogUcs.e("KeyStoreParseHandler", "KeyStore doDecrypt failure.", new Object[0]);
            throw new UcsException(1020L, "KeyStore doDecrypt failure.");
        } catch (Throwable th) {
            c0.c(context);
            String str = "decrypt kek get exception : " + th.getMessage();
            LogUcs.e("KeyStoreParseHandler", str, new Object[0]);
            throw new UcsException(1020L, str);
        }
    }
}
