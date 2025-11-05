package kotlinx.coroutines.sync;

import kotlin.coroutines.Continuation;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface Mutex {
    Object lock(Object obj, Continuation continuation);

    void unlock(Object obj);
}
