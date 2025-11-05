package com.google.firebase.events;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface Subscriber {
    void subscribe(Class cls, EventHandler eventHandler);

    void unsubscribe(Class cls, EventHandler eventHandler);
}
