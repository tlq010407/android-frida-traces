package com.huawei.wisesecurity.ucs.common.exception;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class UcsException extends Exception {
    public transient UcsErrorCode errorCode;

    public UcsException(long j, String str) {
        super(str);
        this.errorCode = new UcsErrorCode(j);
    }

    public long getErrorCode() {
        return this.errorCode.getCode();
    }
}
