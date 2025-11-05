package com.huawei.hms.support.api.push;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class PushException extends RuntimeException {
    public static final String EXCEPTION_SEND_FAILED = "send message failed";

    public PushException() {
    }

    public PushException(String str) {
        super(str);
    }

    public PushException(String str, Throwable th) {
        super(str, th);
    }

    public PushException(Throwable th) {
        super(th);
    }
}
