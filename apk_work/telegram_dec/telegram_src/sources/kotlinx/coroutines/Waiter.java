package kotlinx.coroutines;

import kotlinx.coroutines.internal.Segment;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface Waiter {
    void invokeOnCancellation(Segment segment, int i);
}
