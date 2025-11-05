package com.huawei.location.router.dispatch;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class DispatchException extends RuntimeException {
    private static final long serialVersionUID = -6632599877015588781L;
    private int exceptionCode;

    public DispatchException(int i, String str) {
        super(str);
        setExceptionCode(i);
    }

    public DispatchException(int i, String str, Throwable th) {
        super(str, th);
        setExceptionCode(i);
    }

    private void setExceptionCode(int i) {
        this.exceptionCode = i;
    }

    public int getExceptionCode() {
        return this.exceptionCode;
    }
}
