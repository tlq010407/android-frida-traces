package com.stripe.android;

import com.stripe.android.model.Token;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface TokenCallback {
    void onError(Exception exc);

    void onSuccess(Token token);
}
