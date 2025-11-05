package com.huawei.wisesecurity.ucs.credential.crypto.signer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public enum CredentialSignAlg {
    HMAC_SHA256(0);

    public int id;

    CredentialSignAlg(int i) {
        this.id = i;
    }

    public int getId() {
        return this.id;
    }
}
