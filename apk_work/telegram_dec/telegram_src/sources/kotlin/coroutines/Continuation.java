package kotlin.coroutines;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface Continuation {
    CoroutineContext getContext();

    void resumeWith(Object obj);
}
