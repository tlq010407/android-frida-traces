package com.huawei.wisesecurity.ucs.common.exception;

import com.huawei.wisesecurity.kfs.exception.CryptoException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class UcsCryptoException extends CryptoException {
    public transient UcsErrorCode errorCode;

    public UcsCryptoException(long j, String str) {
        super(str);
        this.errorCode = new UcsErrorCode(j);
    }

    public long getErrorCode() {
        return this.errorCode.getCode();
    }
}
