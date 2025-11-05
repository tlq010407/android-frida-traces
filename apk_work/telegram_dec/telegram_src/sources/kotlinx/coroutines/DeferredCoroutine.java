package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
class DeferredCoroutine extends AbstractCoroutine implements Deferred {
    public DeferredCoroutine(CoroutineContext coroutineContext, boolean z) {
        super(coroutineContext, true, z);
    }

    @Override // kotlinx.coroutines.Deferred
    public Object getCompleted() {
        return getCompletedInternal$kotlinx_coroutines_core();
    }
}
