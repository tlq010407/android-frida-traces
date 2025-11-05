package io.reactivex.rxjava3.disposables;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
abstract class ReferenceDisposable extends AtomicReference implements Disposable {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReferenceDisposable(Object obj) {
        super(obj);
        Objects.requireNonNull(obj, "value is null");
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        Object andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        onDisposed(andSet);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return get() == null;
    }

    protected abstract void onDisposed(Object obj);
}
