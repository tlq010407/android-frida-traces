package io.reactivex.rxjava3.disposables;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
final class RunnableDisposable extends ReferenceDisposable {
    RunnableDisposable(Runnable runnable) {
        super(runnable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.rxjava3.disposables.ReferenceDisposable
    public void onDisposed(Runnable runnable) {
        runnable.run();
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        return "RunnableDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }
}
