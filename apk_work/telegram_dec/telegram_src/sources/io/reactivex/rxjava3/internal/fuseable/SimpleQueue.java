package io.reactivex.rxjava3.internal.fuseable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface SimpleQueue {
    void clear();

    boolean isEmpty();

    boolean offer(Object obj);

    Object poll();
}
