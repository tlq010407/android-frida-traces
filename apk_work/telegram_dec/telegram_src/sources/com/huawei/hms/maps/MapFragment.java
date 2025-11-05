package com.huawei.hms.maps;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.huawei.hms.common.Preconditions;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.feature.dynamic.OnDelegateCreatedListener;
import com.huawei.hms.maps.auth.AuthClient;
import com.huawei.hms.maps.internal.HmsUtil;
import com.huawei.hms.maps.internal.ICreator;
import com.huawei.hms.maps.internal.IHuaweiMapDelegate;
import com.huawei.hms.maps.internal.IMapFragmentDelegate;
import com.huawei.hms.maps.internal.IOnMapReadyCallback;
import com.huawei.hms.maps.model.RuntimeRemoteException;
import com.huawei.hms.maps.provider.inhuawei.MapFragmentDelegate;
import com.huawei.hms.maps.utils.LogM;
import com.huawei.hms.maps.utils.MapsAdvUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@TargetApi(11)
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class MapFragment extends Fragment {
    private static boolean a = false;
    private final mac b;

    static class maa extends com.huawei.hms.maps.maa<mab> implements mac {
        private final Fragment f;
        private OnDelegateCreatedListener<mab> h;
        private Activity i;
        private HuaweiMapOptions j;
        private boolean k;
        private final List<OnMapReadyCallback> g = new ArrayList();
        private boolean l = false;

        maa(Fragment fragment) {
            this.f = fragment;
        }

        maa(Fragment fragment, boolean z) {
            this.f = fragment;
            this.k = z;
        }

        private boolean b() {
            return this.i == null || this.h == null || getDelegate() != 0;
        }

        private void c() throws InterruptedException, NumberFormatException {
            if (b()) {
                return;
            }
            com.huawei.hms.maps.common.util.maa.a(this.i.getApplicationContext());
            MapsInitializer.initialize(this.i);
            int iIsHmsAvailable = HmsUtil.isHmsAvailable(this.i);
            if (iIsHmsAvailable != 0) {
                LogM.e("MapFragment", "not load map hmsState = " + iIsHmsAvailable);
                return;
            }
            if (TextUtils.isEmpty(MapClientIdentify.getApiKey())) {
                MapClientIdentify.setApiKey(com.huawei.hms.maps.common.util.maa.c(this.i.getApplicationContext()));
            }
            if (TextUtils.isEmpty(MapClientIdentify.getAppId())) {
                MapClientIdentify.setAppId(com.huawei.hms.maps.common.util.maa.b(this.i.getApplicationContext()));
            }
            Bundle arguments = this.f.getArguments();
            if (arguments != null && arguments.containsKey("HuaweiMapOptions")) {
                this.j = (HuaweiMapOptions) arguments.getParcelable("HuaweiMapOptions");
            }
            HuaweiMapOptions huaweiMapOptions = this.j;
            if (huaweiMapOptions != null && huaweiMapOptions.getSupportChina().booleanValue()) {
                MapClientIdentify.setSupportChina(true);
            }
            ICreator iCreatorA = com.huawei.hms.maps.internal.mac.a(this.i);
            if (iCreatorA == null) {
                a((Context) this.i);
            } else {
                a(iCreatorA);
            }
        }

        protected IMapFragmentDelegate a(ICreator iCreator, Context context, HuaweiMapOptions huaweiMapOptions) {
            try {
                return this.k ? iCreator.newTextureMapFragmentDelegate(ObjectWrapper.wrap(context), huaweiMapOptions) : iCreator.newMapFragmentDelegate(ObjectWrapper.wrap(context), huaweiMapOptions);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.maps.mac
        public void a(Activity activity) {
            this.i = activity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.huawei.hms.maps.mac
        public final void a(OnMapReadyCallback onMapReadyCallback) {
            if (getDelegate() != 0) {
                ((mab) getDelegate()).a(onMapReadyCallback);
            } else {
                this.g.add(onMapReadyCallback);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.huawei.hms.maps.maa
        protected void a(ICreator iCreator) throws InterruptedException {
            LogM.i("MapFragment", "initDelegate: initDelegateFlag = " + this.l);
            if (this.l) {
                return;
            }
            this.l = true;
            try {
                MapClientIdentify mapClientIdentify = new MapClientIdentify();
                Context contextD = com.huawei.hms.maps.internal.mac.d(this.i);
                mapClientIdentify.regestIdentity(this.i, iCreator);
                IMapFragmentDelegate iMapFragmentDelegateA = contextD != null ? a(iCreator, contextD, this.j) : null;
                if (iMapFragmentDelegateA == null) {
                    LogM.w("MapFragment", "createDelegate: createDelegateRemote == null");
                    this.l = false;
                    return;
                }
                iMapFragmentDelegateA.onAttach(ObjectWrapper.wrap(this.i));
                OnDelegateCreatedListener<mab> onDelegateCreatedListener = this.h;
                if (onDelegateCreatedListener != null) {
                    onDelegateCreatedListener.onDelegateCreated(new mab(this.f, iMapFragmentDelegateA, this.i));
                }
                Iterator<OnMapReadyCallback> it = this.g.iterator();
                while (it.hasNext()) {
                    ((mab) getDelegate()).a(it.next());
                }
                this.g.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper
        public final void createDelegate(OnDelegateCreatedListener<mab> onDelegateCreatedListener) {
            if (MapFragment.b()) {
                return;
            }
            this.h = onDelegateCreatedListener;
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
            try {
                c();
            } finally {
                StrictMode.setThreadPolicy(threadPolicy);
            }
        }
    }

    static class mab extends com.huawei.hms.maps.mab implements mac {
        private final Fragment a;
        private IMapFragmentDelegate b;
        private Activity c;
        private HuaweiMapOptions e;
        private boolean d = false;
        private final List<OnMapReadyCallback> f = new ArrayList();

        public mab(Fragment fragment) {
            this.a = (Fragment) Preconditions.checkNotNull(fragment);
        }

        public mab(Fragment fragment, IMapFragmentDelegate iMapFragmentDelegate, Activity activity) {
            this.b = (IMapFragmentDelegate) Preconditions.checkNotNull(iMapFragmentDelegate);
            this.a = (Fragment) Preconditions.checkNotNull(fragment);
            this.c = activity;
        }

        private void a() {
            MapsInitializer.initialize(this.c);
            MapFragmentDelegate mapFragmentDelegate = new MapFragmentDelegate(this.c, this.e);
            this.b = mapFragmentDelegate;
            try {
                mapFragmentDelegate.onAttach(ObjectWrapper.wrap(this.c));
            } catch (RemoteException unused) {
                LogM.e("MapFragment", "delegate onAttach RemoteException.");
            }
            HuaweiMapOptions huaweiMapOptions = this.e;
            if (huaweiMapOptions != null && huaweiMapOptions.getSupportChina().booleanValue()) {
                MapClientIdentify.setSupportChina(true);
            }
            Iterator<OnMapReadyCallback> it = this.f.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            this.f.clear();
        }

        private void b() {
            MapsInitializer.initialize(null);
            MapClientIdentify.setAppContext(null);
            com.huawei.hms.maps.internal.mac.a();
        }

        @Override // com.huawei.hms.maps.mac
        public void a(Activity activity) {
            this.c = activity;
        }

        @Override // com.huawei.hms.maps.mac
        public final void a(final OnMapReadyCallback onMapReadyCallback) {
            IMapFragmentDelegate iMapFragmentDelegate = this.b;
            if (iMapFragmentDelegate == null) {
                this.f.add(onMapReadyCallback);
                return;
            }
            try {
                iMapFragmentDelegate.getMapAsync(new IOnMapReadyCallback.Stub() { // from class: com.huawei.hms.maps.MapFragment.mab.1
                    @Override // com.huawei.hms.maps.internal.IOnMapReadyCallback
                    public void onMapReady(IHuaweiMapDelegate iHuaweiMapDelegate) {
                        if (onMapReadyCallback == null) {
                            LogM.w("MapFragment", "onMapReady: mapReadyCallback is null");
                            return;
                        }
                        LogM.i("MapFragment", "onMapReady: mapReadyCallback is not null");
                        if (!MapsAdvUtil.containsMapsAdvance()) {
                            onMapReadyCallback.onMapReady(new HuaweiMap(iHuaweiMapDelegate));
                            return;
                        }
                        LogM.i("MapFragment", "onMapReady: fullsdk ");
                        onMapReadyCallback.onMapReady(mab.this.a((com.huawei.hms.maps.provider.inhuawei.IHuaweiMapDelegate) iHuaweiMapDelegate));
                    }
                });
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onCreate(Bundle bundle) {
            try {
                Bundle bundleA = com.huawei.hms.maps.internal.mad.a(bundle);
                Bundle arguments = this.a.getArguments();
                if (arguments != null && arguments.containsKey("HuaweiMapOptions")) {
                    HuaweiMapOptions huaweiMapOptions = (HuaweiMapOptions) arguments.getParcelable("HuaweiMapOptions");
                    this.e = huaweiMapOptions;
                    com.huawei.hms.maps.internal.mad.a(bundleA, "HuaweiMapOptions", huaweiMapOptions);
                }
                if (MapsAdvUtil.containsMapsBasic()) {
                    a();
                }
                this.b.onCreate(bundleA);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            return mad.a(this.c, this.b, layoutInflater, viewGroup, bundle);
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onDestroy() {
            try {
                this.b.onDestroy();
                if (this.d) {
                    return;
                }
                Activity activity = this.c;
                if (activity == null || !activity.isFinishing()) {
                    LogM.d("MapFragment", "onDestroy: execute clearResource in onDestroy method, but activity is  running");
                } else {
                    LogM.d("MapFragment", "clearResource in onDestroy method");
                    b();
                }
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onDestroyView() {
            try {
                this.b.onDestroyView();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                LogM.e("MapFragment", "onInflate Bundle is null!");
                return;
            }
            this.e = (HuaweiMapOptions) bundle.getParcelable("HuaweiMapOptions");
            if (MapsAdvUtil.containsMapsBasic()) {
                a();
            }
            try {
                this.b.onInflate(ObjectWrapper.wrap(activity), this.e, com.huawei.hms.maps.internal.mad.a(bundle2));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onLowMemory() {
            try {
                this.b.onLowMemory();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onPause() {
            try {
                this.b.onPause();
                Activity activity = this.c;
                if (activity == null || !activity.isFinishing()) {
                    return;
                }
                LogM.d("MapFragment", "clearResource in onPause method");
                b();
                this.d = true;
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onResume() {
            try {
                this.b.onResume();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onSaveInstanceState(Bundle bundle) {
            try {
                this.b.onSaveInstanceState(com.huawei.hms.maps.internal.mad.a(bundle));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onStart() {
            try {
                this.b.onStart();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onStop() {
            try {
                this.b.onStop();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    public MapFragment() {
        if (MapsInitializer.a()) {
            this.b = MapsAdvUtil.containsMapsBasic() ? new mab(this) : new maa(this);
        } else {
            LogM.e("MapFragment", "MapsInitializer is not initialized.");
            this.b = null;
        }
    }

    private static void a(boolean z) {
        a = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b() {
        return a;
    }

    public static MapFragment newInstance() {
        return new MapFragment();
    }

    public static MapFragment newInstance(HuaweiMapOptions huaweiMapOptions) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("HuaweiMapOptions", huaweiMapOptions);
        MapFragment mapFragment = new MapFragment();
        mapFragment.setArguments(bundle);
        return mapFragment;
    }

    public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
        LogM.d("MapFragment", "getMapAsync: ");
        mac macVar = this.b;
        if (macVar != null) {
            macVar.a(onMapReadyCallback);
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MapFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        LogM.d("MapFragment", "onAttach: ");
        mac macVar = this.b;
        if (macVar != null) {
            macVar.a(activity);
        }
        super.onAttach(activity);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        LogM.d("MapFragment", "onCreate: ");
        super.onCreate(bundle);
        if (this.b == null) {
            LogM.e("MapFragment", "MapsInitializer is not initialized.");
            return;
        }
        a(true);
        if (MapsAdvUtil.containsMapsBasic()) {
            com.huawei.hms.maps.common.util.maa.a(getActivity());
            AuthClient.getInstance().startAuth(getActivity());
        }
        com.huawei.hms.maps.internal.mac.e(getActivity());
        com.huawei.hms.maps.internal.mac.b(true);
        this.b.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        LogM.d("MapFragment", "onCreateView: ");
        if (this.b == null) {
            LogM.e("MapFragment", "MapsInitializer is not initialized.");
            return new View(getActivity());
        }
        if (MapClientIdentify.getMapAuthStartTime() == 0) {
            MapClientIdentify.setMapAuthStartTime(System.currentTimeMillis());
        }
        View viewOnCreateView = this.b.onCreateView(layoutInflater, viewGroup, bundle);
        viewOnCreateView.setBackground(new mae().a(viewOnCreateView));
        viewOnCreateView.setClickable(true);
        return viewOnCreateView;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        LogM.d("MapFragment", "onDestroy: ");
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onDestroy();
        }
        HmsUtil.setRepeatFlag(true);
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onDestroyView();
        }
        super.onDestroyView();
    }

    public final void onEnterAmbient(Bundle bundle) {
        LogM.d("MapFragment", "onEnterAmbient: ");
    }

    public final void onExitAmbient() {
        LogM.d("MapFragment", "onExitAmbient: ");
    }

    @Override // android.app.Fragment
    @SuppressLint({"NewApi"})
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        LogM.d("MapFragment", "onInflate: ");
        if (this.b == null) {
            super.onInflate(activity, attributeSet, bundle);
            return;
        }
        MapClientIdentify.setMapAuthStartTime(System.currentTimeMillis());
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            HuaweiMapOptions huaweiMapOptionsCreateFromAttributes = HuaweiMapOptions.createFromAttributes(activity, attributeSet);
            super.onInflate(activity, attributeSet, bundle);
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("HuaweiMapOptions", huaweiMapOptionsCreateFromAttributes);
            if (getArguments() == null) {
                setArguments(bundle2);
            }
            this.b.a(activity);
            this.b.onInflate(activity, bundle2, bundle);
            StrictMode.setThreadPolicy(threadPolicy);
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(threadPolicy);
            throw th;
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        LogM.d("MapFragment", "onLowMemory: ");
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onLowMemory();
        }
        super.onLowMemory();
    }

    @Override // android.app.Fragment
    public void onPause() {
        LogM.d("MapFragment", "onPause: ");
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onPause();
        }
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        a(false);
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onResume();
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        LogM.d("MapFragment", "onSaveInstanceState: ");
        if (bundle != null) {
            bundle.setClassLoader(MapFragment.class.getClassLoader());
            super.onSaveInstanceState(bundle);
            mac macVar = this.b;
            if (macVar != null) {
                macVar.onSaveInstanceState(bundle);
            }
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onStart();
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onStop();
        }
        super.onStop();
    }

    @Override // android.app.Fragment
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
