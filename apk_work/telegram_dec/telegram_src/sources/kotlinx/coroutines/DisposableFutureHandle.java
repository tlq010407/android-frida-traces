package kotlinx.coroutines;

import java.util.concurrent.Future;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
final class DisposableFutureHandle implements DisposableHandle {
    private final Future future;

    public DisposableFutureHandle(Future future) {
        this.future = future;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public void dispose() {
        this.future.cancel(false);
    }

    public String toString() {
        return "DisposableFutureHandle[" + this.future + ']';
    }
}
