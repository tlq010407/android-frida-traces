package io.reactivex.rxjava3.internal.functions;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.LongConsumer;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscription;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class Functions {
    static final Function IDENTITY = new Identity();
    public static final Runnable EMPTY_RUNNABLE = new EmptyRunnable();
    public static final Action EMPTY_ACTION = new EmptyAction();
    static final Consumer EMPTY_CONSUMER = new EmptyConsumer();
    public static final Consumer ERROR_CONSUMER = new ErrorConsumer();
    public static final Consumer ON_ERROR_MISSING = new OnErrorMissingConsumer();
    public static final LongConsumer EMPTY_LONG_CONSUMER = new EmptyLongConsumer();
    static final Predicate ALWAYS_TRUE = new TruePredicate();
    static final Predicate ALWAYS_FALSE = new FalsePredicate();
    static final Supplier NULL_SUPPLIER = new NullProvider();
    public static final Consumer REQUEST_MAX = new MaxRequestSubscription();

    static final class EmptyAction implements Action {
        EmptyAction() {
        }

        @Override // io.reactivex.rxjava3.functions.Action
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    static final class EmptyConsumer implements Consumer {
        EmptyConsumer() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    static final class EmptyLongConsumer implements LongConsumer {
        EmptyLongConsumer() {
        }
    }

    static final class EmptyRunnable implements Runnable {
        EmptyRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    static final class ErrorConsumer implements Consumer {
        ErrorConsumer() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(Throwable th) {
            RxJavaPlugins.onError(th);
        }
    }

    static final class FalsePredicate implements Predicate {
        FalsePredicate() {
        }
    }

    static final class Identity implements Function {
        Identity() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    static final class JustValue implements Callable, Supplier, Function {
        final Object value;

        JustValue(Object obj) {
            this.value = obj;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public Object apply(Object obj) {
            return this.value;
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return this.value;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        public Object get() {
            return this.value;
        }
    }

    static final class MaxRequestSubscription implements Consumer {
        MaxRequestSubscription() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
            accept((Subscription) null);
        }

        public void accept(Subscription subscription) {
            subscription.request(Long.MAX_VALUE);
        }
    }

    static final class NullProvider implements Supplier {
        NullProvider() {
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        public Object get() {
            return null;
        }
    }

    static final class OnErrorMissingConsumer implements Consumer {
        OnErrorMissingConsumer() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(Throwable th) {
            RxJavaPlugins.onError(new OnErrorNotImplementedException(th));
        }
    }

    static final class TruePredicate implements Predicate {
        TruePredicate() {
        }
    }

    public static Consumer emptyConsumer() {
        return EMPTY_CONSUMER;
    }

    public static Supplier justSupplier(Object obj) {
        return new JustValue(obj);
    }
}
