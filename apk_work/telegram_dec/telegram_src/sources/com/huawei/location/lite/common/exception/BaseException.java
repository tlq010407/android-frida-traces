package com.huawei.location.lite.common.exception;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class BaseException extends RuntimeException {
    private int exceptionCode;

    public BaseException(int i, String str) {
        super(str);
        setExceptionCode(i);
    }

    private void setExceptionCode(int i) {
        this.exceptionCode = i;
    }

    public int getExceptionCode() {
        return this.exceptionCode;
    }
}
