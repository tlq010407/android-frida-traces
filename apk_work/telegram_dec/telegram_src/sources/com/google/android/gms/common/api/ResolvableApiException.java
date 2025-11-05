package com.google.android.gms.common.api;

import android.app.Activity;
import android.content.IntentSender;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class ResolvableApiException extends ApiException {
    public ResolvableApiException(Status status) {
        super(status);
    }

    public void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        getStatus().startResolutionForResult(activity, i);
    }
}
