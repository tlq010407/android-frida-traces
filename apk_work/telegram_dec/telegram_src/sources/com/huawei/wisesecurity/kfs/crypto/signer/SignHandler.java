package com.huawei.wisesecurity.kfs.crypto.signer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface SignHandler {
    SignHandler from(String str);

    SignHandler from(byte[] bArr);

    byte[] sign();
}
