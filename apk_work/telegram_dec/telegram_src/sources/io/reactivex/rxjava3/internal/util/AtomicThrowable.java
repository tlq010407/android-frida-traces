package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class AtomicThrowable extends AtomicReference {
    public Throwable terminate() {
        return ExceptionHelper.terminate(this);
    }

    public boolean tryAddThrowable(Throwable th) {
        return ExceptionHelper.addThrowable(this, th);
    }

    public boolean tryAddThrowableOrReport(Throwable th) {
        if (tryAddThrowable(th)) {
            return true;
        }
        RxJavaPlugins.onError(th);
        return false;
    }

    public void tryTerminateAndReport() {
        Throwable thTerminate = terminate();
        if (thTerminate == null || thTerminate == ExceptionHelper.TERMINATED) {
            return;
        }
        RxJavaPlugins.onError(thTerminate);
    }

    public void tryTerminateConsumer(Observer observer) {
        Throwable thTerminate = terminate();
        if (thTerminate == null) {
            observer.onComplete();
        } else if (thTerminate != ExceptionHelper.TERMINATED) {
            observer.onError(thTerminate);
        }
    }
}
