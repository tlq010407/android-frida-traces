package com.huawei.hms.maps;

import android.content.Context;
import com.huawei.hms.feature.dynamic.DeferredLifecycleHelper;
import com.huawei.hms.feature.dynamic.IObjectWrapper;
import com.huawei.hms.feature.dynamic.LifecycleDelegate;
import com.huawei.hms.maps.internal.ICreator;
import com.huawei.hms.maps.internal.IDistanceCalculatorDelegate;
import com.huawei.hms.maps.internal.IMapAuthToProvider;
import com.huawei.hms.maps.internal.IMapClientIdentity;
import com.huawei.hms.maps.internal.IMapFragmentDelegate;
import com.huawei.hms.maps.internal.IMapViewDelegate;
import com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.huawei.hms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.huawei.hms.maps.utils.DynamicUtil;
import com.huawei.hms.maps.utils.LogM;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
abstract class maa<T extends LifecycleDelegate> extends DeferredLifecycleHelper<T> {
    private Disposable g;
    private boolean f = false;
    private ICreator h = new ICreator.Stub() { // from class: com.huawei.hms.maps.maa.1
        @Override // com.huawei.hms.maps.internal.ICreator
        public void init(IObjectWrapper iObjectWrapper, int i) {
        }

        @Override // com.huawei.hms.maps.internal.ICreator
        public IDistanceCalculatorDelegate newDistanceCalculatorDelegate(IObjectWrapper iObjectWrapper) {
            return null;
        }

        @Override // com.huawei.hms.maps.internal.ICreator
        public IMapAuthToProvider newMapAuthToProvider(IObjectWrapper iObjectWrapper) {
            return null;
        }

        @Override // com.huawei.hms.maps.internal.ICreator
        public IMapClientIdentity newMapClientIdentity(IObjectWrapper iObjectWrapper) {
            return null;
        }

        @Override // com.huawei.hms.maps.internal.ICreator
        public IMapFragmentDelegate newMapFragmentDelegate(IObjectWrapper iObjectWrapper, HuaweiMapOptions huaweiMapOptions) {
            return null;
        }

        @Override // com.huawei.hms.maps.internal.ICreator
        public IMapViewDelegate newMapViewDelegate(IObjectWrapper iObjectWrapper, HuaweiMapOptions huaweiMapOptions) {
            return null;
        }

        @Override // com.huawei.hms.maps.internal.ICreator
        public maf newPlaceDelegate(IObjectWrapper iObjectWrapper) {
            return null;
        }

        @Override // com.huawei.hms.maps.internal.ICreator
        public IStreetViewPanoramaFragmentDelegate newStreetViewPanoramaFragmentDelegate(IObjectWrapper iObjectWrapper) {
            return null;
        }

        @Override // com.huawei.hms.maps.internal.ICreator
        public IStreetViewPanoramaViewDelegate newStreetViewPanoramaViewDelegate(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions) {
            return null;
        }

        @Override // com.huawei.hms.maps.internal.ICreator
        public IMapFragmentDelegate newTextureMapFragmentDelegate(IObjectWrapper iObjectWrapper, HuaweiMapOptions huaweiMapOptions) {
            return null;
        }

        @Override // com.huawei.hms.maps.internal.ICreator
        public IMapViewDelegate newTextureMapViewDelegate(IObjectWrapper iObjectWrapper, HuaweiMapOptions huaweiMapOptions) {
            return null;
        }

        @Override // com.huawei.hms.maps.internal.ICreator
        public IStreetViewPanoramaFragmentDelegate optStreetViewPanoramaFragmentDelegate(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions) {
            return null;
        }
    };

    /* renamed from: com.huawei.hms.maps.maa$maa, reason: collision with other inner class name */
    private class C0010maa implements Consumer {
        private C0010maa() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(ICreator iCreator) {
            maa.this.b();
            if (iCreator == null || iCreator == maa.this.h) {
                maa.this.f = false;
                LogM.e("AbsDeferredLifecycleHelper", "getCreator: creator == null, createdFlag = false");
            } else {
                LogM.i("AbsDeferredLifecycleHelper", "realCreateDelegate: start");
                maa.this.a(iCreator);
            }
        }
    }

    private class mab implements Consumer {
        private mab() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Throwable th) {
            maa.this.b();
            maa.this.f = false;
            LogM.e("AbsDeferredLifecycleHelper", "getCreator: throwable = " + th.getMessage() + "; createdFlag = " + maa.this.f);
        }
    }

    private static class mac implements Function {
        private int a;

        private mac() {
            this.a = 0;
        }

        static /* synthetic */ int a(mac macVar) {
            int i = macVar.a + 1;
            macVar.a = i;
            return i;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Observable apply(Observable observable) {
            return observable.flatMap(new Function() { // from class: com.huawei.hms.maps.maa.mac.1
                @Override // io.reactivex.rxjava3.functions.Function
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public ObservableSource apply(Throwable th) {
                    if (mac.a(mac.this) > 3) {
                        return Observable.error(th);
                    }
                    LogM.w("AbsDeferredLifecycleHelper", "get MapCreator failed, retry counter :" + mac.this.a);
                    return Observable.timer(500L, TimeUnit.MILLISECONDS);
                }
            });
        }
    }

    maa() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        Disposable disposable = this.g;
        if (disposable == null || disposable.isDisposed()) {
            return;
        }
        this.g.dispose();
        this.g = null;
        LogM.d("AbsDeferredLifecycleHelper", "getCreator: disposable");
    }

    protected void a(final Context context) {
        if (DynamicUtil.isAndroidN()) {
            return;
        }
        LogM.i("AbsDeferredLifecycleHelper", "getCreator: createdFlag = " + this.f);
        if (this.f) {
            return;
        }
        this.f = true;
        b();
        this.g = Observable.fromCallable(new Callable<ICreator>() { // from class: com.huawei.hms.maps.maa.2
            @Override // java.util.concurrent.Callable
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public ICreator call() {
                ICreator iCreatorC = com.huawei.hms.maps.internal.mac.c(context);
                return iCreatorC == null ? maa.this.h : iCreatorC;
            }
        }).subscribeOn(Schedulers.io()).unsubscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).retryWhen(new mac()).subscribe(new C0010maa(), new mab());
        LogM.i("AbsDeferredLifecycleHelper", "getCreator: execute");
    }

    protected abstract void a(ICreator iCreator);
}
