package com.huawei.hms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.huawei.hms.common.Preconditions;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.feature.dynamic.OnDelegateCreatedListener;
import com.huawei.hms.maps.auth.AuthClient;
import com.huawei.hms.maps.internal.HmsUtil;
import com.huawei.hms.maps.internal.ICreator;
import com.huawei.hms.maps.internal.IHuaweiMapDelegate;
import com.huawei.hms.maps.internal.IMapViewDelegate;
import com.huawei.hms.maps.internal.IOnMapReadyCallback;
import com.huawei.hms.maps.model.RuntimeRemoteException;
import com.huawei.hms.maps.provider.inhuawei.MapViewDelegate;
import com.huawei.hms.maps.utils.LogM;
import com.huawei.hms.maps.utils.MapsAdvUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class MapView extends FrameLayout {
    protected MapLifecycleDelegate a;
    private final boolean b;

    static class maa extends com.huawei.hms.maps.maa<mab> implements MapLifecycleDelegate {
        private final ViewGroup f;
        private final Context g;
        private OnDelegateCreatedListener<mab> h;
        private final HuaweiMapOptions i;
        private final List<OnMapReadyCallback> j = new ArrayList();
        private boolean k = false;

        maa(ViewGroup viewGroup, Context context, HuaweiMapOptions huaweiMapOptions) {
            this.f = viewGroup;
            this.g = context;
            this.i = huaweiMapOptions;
        }

        protected IMapViewDelegate a(ICreator iCreator, Context context, HuaweiMapOptions huaweiMapOptions) {
            if (MapsAdvUtil.containsMapsBasic()) {
                return new MapViewDelegate(context, huaweiMapOptions);
            }
            try {
                LogM.i("MapView", "createDelegate: createMapViewDelegateRemote");
                return iCreator.newMapViewDelegate(ObjectWrapper.wrap(context), huaweiMapOptions);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.huawei.hms.maps.maa
        protected void a(ICreator iCreator) throws InterruptedException {
            LogM.i("MapView", "createDelegate: initDelegateFlag = " + this.k);
            if (this.k) {
                return;
            }
            this.k = true;
            try {
                MapClientIdentify mapClientIdentify = new MapClientIdentify();
                Context contextD = com.huawei.hms.maps.internal.mac.d(this.g);
                mapClientIdentify.regestIdentity(this.g, iCreator);
                IMapViewDelegate iMapViewDelegateA = contextD != null ? a(iCreator, contextD, this.i) : null;
                if (iMapViewDelegateA == null) {
                    LogM.w("MapView", "createDelegate: mapReadyCallbacks: mapViewDelegate is null");
                    this.k = false;
                    return;
                }
                LogM.i("MapView", "createDelegate: sdk MapView constructor mIMapViewDelegate:" + iMapViewDelegateA);
                iMapViewDelegateA.setActivity(ObjectWrapper.wrap(this.g));
                OnDelegateCreatedListener<mab> onDelegateCreatedListener = this.h;
                if (onDelegateCreatedListener != null) {
                    onDelegateCreatedListener.onDelegateCreated(new mab(this.f, this.g, iMapViewDelegateA));
                }
                LogM.i("MapView", "createDelegate: mapReadyCallbacks.size = " + this.j.size());
                Iterator<OnMapReadyCallback> it = this.j.iterator();
                while (it.hasNext()) {
                    ((mab) getDelegate()).getMapAsync(it.next());
                }
                this.j.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper
        public void createDelegate(OnDelegateCreatedListener<mab> onDelegateCreatedListener) throws InterruptedException, NumberFormatException {
            StringBuilder sb;
            com.huawei.hms.maps.common.util.maa.a(this.g);
            this.h = onDelegateCreatedListener;
            if (onDelegateCreatedListener == null || getDelegate() != 0) {
                sb = new StringBuilder();
                sb.append("createDelegate: onDelegateCreatedListener = ");
                sb.append(onDelegateCreatedListener);
                sb.append("; getDelegate = ");
                sb.append(getDelegate());
            } else {
                MapsInitializer.initialize(this.g);
                int iIsHmsAvailable = HmsUtil.isHmsAvailable(this.g);
                if (iIsHmsAvailable == 0) {
                    if (TextUtils.isEmpty(MapClientIdentify.getApiKey())) {
                        MapClientIdentify.setApiKey(com.huawei.hms.maps.common.util.maa.c(this.g));
                    }
                    if (TextUtils.isEmpty(MapClientIdentify.getAppId())) {
                        MapClientIdentify.setAppId(com.huawei.hms.maps.common.util.maa.b(this.g));
                    }
                    HuaweiMapOptions huaweiMapOptions = this.i;
                    if (huaweiMapOptions != null && huaweiMapOptions.getSupportChina().booleanValue()) {
                        MapClientIdentify.setSupportChina(true);
                    }
                    ICreator iCreatorA = com.huawei.hms.maps.internal.mac.a(this.g);
                    if (iCreatorA == null) {
                        LogM.e("MapView", "createDelegate: creator == null");
                        a(this.g);
                        return;
                    }
                    LogM.e("MapView", "createDelegate: innerCreateDelegate creator = " + iCreatorA);
                    a(iCreatorA);
                    return;
                }
                sb = new StringBuilder();
                sb.append("not load map hmsState = ");
                sb.append(iIsHmsAvailable);
            }
            LogM.e("MapView", sb.toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.huawei.hms.maps.MapLifecycleDelegate
        public final void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
            LogM.i("MapView", "getMapAsync: getDelegate = " + getDelegate());
            if (getDelegate() != 0) {
                ((mab) getDelegate()).getMapAsync(onMapReadyCallback);
                return;
            }
            this.j.add(onMapReadyCallback);
            LogM.i("MapView", "getMapAsync: mapReadyCallbacks.size = " + this.j.size());
        }
    }

    static class mab extends com.huawei.hms.maps.mab implements MapLifecycleDelegate {
        private ViewGroup a;
        private IMapViewDelegate b;
        private View c;
        private boolean d = false;
        private Context e;

        public mab(ViewGroup viewGroup, Context context, IMapViewDelegate iMapViewDelegate) {
            this.a = (ViewGroup) Preconditions.checkNotNull(viewGroup);
            this.b = (IMapViewDelegate) Preconditions.checkNotNull(iMapViewDelegate);
            this.e = context;
            MapsInitializer.initialize(context);
        }

        private void a() {
            Activity activityFindActivity = HmsUtil.findActivity(MapClientIdentify.getAppContext());
            if (activityFindActivity == null || !activityFindActivity.isFinishing()) {
                return;
            }
            MapsInitializer.initialize(null);
            MapClientIdentify.setAppContext(null);
            com.huawei.hms.maps.internal.mac.a();
            this.d = true;
        }

        @Override // com.huawei.hms.maps.MapLifecycleDelegate
        public void getMapAsync(final OnMapReadyCallback onMapReadyCallback) {
            try {
                this.b.getMapAsync(new IOnMapReadyCallback.Stub() { // from class: com.huawei.hms.maps.MapView.mab.1
                    @Override // com.huawei.hms.maps.internal.IOnMapReadyCallback
                    public void onMapReady(IHuaweiMapDelegate iHuaweiMapDelegate) {
                        if (onMapReadyCallback == null) {
                            LogM.w("MapView", "onMapReady: mapReadyCallback is null");
                            return;
                        }
                        LogM.i("MapView", "onMapReady: mapReadyCallback is not null");
                        if (!MapsAdvUtil.containsMapsAdvance()) {
                            onMapReadyCallback.onMapReady(new HuaweiMap(iHuaweiMapDelegate));
                            return;
                        }
                        LogM.i("MapView", "onMapReady: fullsdk ");
                        onMapReadyCallback.onMapReady(mab.this.a((com.huawei.hms.maps.provider.inhuawei.IHuaweiMapDelegate) iHuaweiMapDelegate));
                    }
                });
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onCreate(Bundle bundle) {
            try {
                this.b.onCreate(com.huawei.hms.maps.internal.mad.a(bundle));
                this.b.setActivity(ObjectWrapper.wrap(this.e));
                this.c = !MapsAdvUtil.containsMapsBasic() ? (View) ObjectWrapper.unwrap(this.b.getView()) : this.b.getMapView();
                this.a.removeAllViews();
                this.a.addView(this.c);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView prohibited on MapViewDelegate");
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onDestroy() {
            try {
                this.b.onDestroy();
                if (this.d) {
                    return;
                }
                a();
                LogM.d("MapView", this.d ? "clearResource in onDestroy method" : "onDestroy: execute clearResource in onDestroy method, but activity is  running");
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onDestroyView() {
            throw new UnsupportedOperationException("onDestroyView prohibited on MapViewDelegate");
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate prohibited on MapViewDelegate");
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onLowMemory() {
            try {
                this.b.onLowMemory();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onPause() {
            try {
                LogM.d("MapView", "MapView:onResume");
                this.b.onPause();
                if (MapClientIdentify.getAppContext() instanceof Activity) {
                    a();
                    if (this.d) {
                        LogM.d("MapView", "clearResource in onPause method");
                    }
                }
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onResume() {
            try {
                LogM.d("MapView", "MapView:onResume");
                this.b.onResume();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onSaveInstanceState(Bundle bundle) {
            try {
                this.b.onSaveInstanceState(com.huawei.hms.maps.internal.mad.a(bundle));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onStart() {
            try {
                this.b.onStart();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onStop() {
            try {
                this.b.onStop();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    public MapView(Context context) {
        this(context, (AttributeSet) null, 0);
    }

    public MapView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, false);
    }

    protected MapView(Context context, AttributeSet attributeSet, int i, boolean z) {
        super(context, attributeSet, i);
        this.b = z;
        a(context, attributeSet != null ? HuaweiMapOptions.createFromAttributes(context, attributeSet) : null);
    }

    public MapView(Context context, HuaweiMapOptions huaweiMapOptions) {
        this(context, huaweiMapOptions, false);
    }

    protected MapView(Context context, HuaweiMapOptions huaweiMapOptions, boolean z) {
        super(context);
        this.b = z;
        a(context, huaweiMapOptions);
    }

    private void a(Context context, HuaweiMapOptions huaweiMapOptions) {
        MapLifecycleDelegate maaVar;
        LogM.d("MapView", "initMapView: ");
        if (!MapsInitializer.a()) {
            LogM.e("MapView", "MapsInitializer is not initialized.");
            this.a = null;
            return;
        }
        if (MapClientIdentify.getMapAuthStartTime() == 0) {
            MapClientIdentify.setMapAuthStartTime(System.currentTimeMillis());
        }
        if (!this.b) {
            if (MapsAdvUtil.containsMapsBasic()) {
                com.huawei.hms.maps.common.util.maa.a(context);
                AuthClient.getInstance().startAuth(context);
                maaVar = new mab(this, context, new MapViewDelegate(context, huaweiMapOptions));
            } else {
                maaVar = new maa(this, context, huaweiMapOptions);
            }
            this.a = maaVar;
        }
        setClickable(true);
        setBackground(new mae().a(this));
    }

    public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
        LogM.d("MapView", "getMapAsync: ");
        MapLifecycleDelegate mapLifecycleDelegate = this.a;
        if (mapLifecycleDelegate != null) {
            mapLifecycleDelegate.getMapAsync(onMapReadyCallback);
        }
    }

    public void onCreate(Bundle bundle) {
        if (this.a == null) {
            LogM.e("MapView", "MapsInitializer is not initialized.");
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        MapClientIdentify.setMapAuthStartTime(System.currentTimeMillis());
        com.huawei.hms.maps.internal.mac.e(getContext());
        com.huawei.hms.maps.internal.mac.b(true);
        try {
            this.a.onCreate(bundle);
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public void onDestroy() {
        MapLifecycleDelegate mapLifecycleDelegate = this.a;
        if (mapLifecycleDelegate != null) {
            mapLifecycleDelegate.onDestroy();
        }
        HmsUtil.setRepeatFlag(true);
    }

    public final void onEnterAmbient(Bundle bundle) {
        LogM.d("MapView", "onEnterAmbient");
    }

    public final void onExitAmbient() {
        LogM.d("MapView", "onExitAmbient");
    }

    public final void onLowMemory() {
        MapLifecycleDelegate mapLifecycleDelegate = this.a;
        if (mapLifecycleDelegate != null) {
            mapLifecycleDelegate.onLowMemory();
        }
    }

    public void onPause() {
        LogM.d("MapView", "onPause");
        MapLifecycleDelegate mapLifecycleDelegate = this.a;
        if (mapLifecycleDelegate != null) {
            mapLifecycleDelegate.onPause();
        }
    }

    public void onResume() {
        MapLifecycleDelegate mapLifecycleDelegate = this.a;
        if (mapLifecycleDelegate != null) {
            mapLifecycleDelegate.onResume();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        MapLifecycleDelegate mapLifecycleDelegate = this.a;
        if (mapLifecycleDelegate != null) {
            mapLifecycleDelegate.onSaveInstanceState(bundle);
        }
    }

    public void onStart() {
        MapLifecycleDelegate mapLifecycleDelegate = this.a;
        if (mapLifecycleDelegate != null) {
            mapLifecycleDelegate.onStart();
        }
    }

    public void onStop() {
        MapLifecycleDelegate mapLifecycleDelegate = this.a;
        if (mapLifecycleDelegate != null) {
            mapLifecycleDelegate.onStop();
        }
    }
}
