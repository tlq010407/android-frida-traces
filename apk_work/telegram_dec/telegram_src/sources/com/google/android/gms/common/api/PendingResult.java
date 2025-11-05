package com.google.android.gms.common.api;

import java.util.concurrent.TimeUnit;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class PendingResult {

    public interface StatusListener {
        void onComplete(Status status);
    }

    public abstract void addStatusListener(StatusListener statusListener);

    public abstract Result await(long j, TimeUnit timeUnit);

    public abstract void cancel();

    public abstract void setResultCallback(ResultCallback resultCallback);
}
