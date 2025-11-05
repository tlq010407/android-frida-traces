package com.stripe.android.exception;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class APIConnectionException extends StripeException {
    public APIConnectionException(String str) {
        super(str, null, 0);
    }

    public APIConnectionException(String str, Throwable th) {
        super(str, null, 0, th);
    }
}
