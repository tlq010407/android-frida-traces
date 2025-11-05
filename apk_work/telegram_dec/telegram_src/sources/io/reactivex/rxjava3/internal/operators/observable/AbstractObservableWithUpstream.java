package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
abstract class AbstractObservableWithUpstream extends Observable {
    protected final ObservableSource source;

    AbstractObservableWithUpstream(ObservableSource observableSource) {
        this.source = observableSource;
    }
}
