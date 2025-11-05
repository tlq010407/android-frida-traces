package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface LifecycleFragment {
    void addCallback(String str, LifecycleCallback lifecycleCallback);

    LifecycleCallback getCallbackOrNull(String str, Class cls);

    Activity getLifecycleActivity();

    void startActivityForResult(Intent intent, int i);
}
