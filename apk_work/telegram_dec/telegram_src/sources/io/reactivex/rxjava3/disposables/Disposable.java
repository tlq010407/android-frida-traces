package io.reactivex.rxjava3.disposables;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface Disposable {

    /* renamed from: io.reactivex.rxjava3.disposables.Disposable$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static Disposable disposed() {
            return EmptyDisposable.INSTANCE;
        }

        public static Disposable fromRunnable(Runnable runnable) {
            Objects.requireNonNull(runnable, "run is null");
            return new RunnableDisposable(runnable);
        }
    }

    void dispose();

    boolean isDisposed();
}
