package com.huawei.wisesecurity.ucs.credential.crypto.cipher;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public enum CredentialCipherAlg {
    AES_GCM(1);

    public int id;

    CredentialCipherAlg(int i) {
        this.id = i;
    }

    public int getId() {
        return this.id;
    }
}
