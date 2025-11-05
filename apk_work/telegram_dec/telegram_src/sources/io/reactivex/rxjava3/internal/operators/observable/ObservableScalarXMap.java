package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.fuseable.QueueDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class ObservableScalarXMap {

    public static final class ScalarDisposable extends AtomicInteger implements QueueDisposable, Runnable {
        final Observer observer;
        final Object value;

        public ScalarDisposable(Observer observer, Object obj) {
            this.observer = observer;
            this.value = obj;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.SimpleQueue
        public void clear() {
            lazySet(3);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            set(3);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get() == 3;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return get() != 1;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.SimpleQueue
        public boolean offer(Object obj) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.SimpleQueue
        public Object poll() {
            if (get() != 1) {
                return null;
            }
            lazySet(3);
            return this.value;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            lazySet(1);
            return 1;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.observer.onNext(this.value);
                if (get() == 2) {
                    lazySet(3);
                    this.observer.onComplete();
                }
            }
        }
    }

    static final class ScalarXMapObservable extends Observable {
        final Function mapper;
        final Object value;

        ScalarXMapObservable(Object obj, Function function) {
            this.value = obj;
            this.mapper = function;
        }

        @Override // io.reactivex.rxjava3.core.Observable
        public void subscribeActual(Observer observer) {
            try {
                Object objApply = this.mapper.apply(this.value);
                Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
                ObservableSource observableSource = (ObservableSource) objApply;
                if (!(observableSource instanceof Supplier)) {
                    observableSource.subscribe(observer);
                    return;
                }
                Object obj = ((Supplier) observableSource).get();
                if (obj == null) {
                    EmptyDisposable.complete(observer);
                    return;
                }
                ScalarDisposable scalarDisposable = new ScalarDisposable(observer, obj);
                observer.onSubscribe(scalarDisposable);
                scalarDisposable.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptyDisposable.error(th, observer);
            }
        }
    }

    public static Observable scalarXMap(Object obj, Function function) {
        return RxJavaPlugins.onAssembly(new ScalarXMapObservable(obj, function));
    }

    public static boolean tryScalarXMapSubscribe(ObservableSource observableSource, Observer observer, Function function) {
        if (!(observableSource instanceof Supplier)) {
            return false;
        }
        try {
            Object obj = ((Supplier) observableSource).get();
            if (obj == null) {
                EmptyDisposable.complete(observer);
                return true;
            }
            Object objApply = function.apply(obj);
            Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
            ObservableSource observableSource2 = (ObservableSource) objApply;
            if (observableSource2 instanceof Supplier) {
                Object obj2 = ((Supplier) observableSource2).get();
                if (obj2 == null) {
                    EmptyDisposable.complete(observer);
                    return true;
                }
                ScalarDisposable scalarDisposable = new ScalarDisposable(observer, obj2);
                observer.onSubscribe(scalarDisposable);
                scalarDisposable.run();
            } else {
                observableSource2.subscribe(observer);
            }
            return true;
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
            return true;
        }
    }
}
