package com.huawei.hms.maps;

import android.annotation.SuppressLint;
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
import androidx.fragment.app.Fragment;
import androidx.lifecycle.viewmodel.CreationExtras;
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

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class SupportMapFragment extends Fragment {
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
                LogM.e("SupportMapFragment", "not load map hmsState = " + iIsHmsAvailable);
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
            LogM.i("SupportMapFragment", "initDelegate: initDelegateFlag = " + this.l);
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
                    LogM.w("SupportMapFragment", "innerCreateDelegate: supportMapFragmentDelegate is null");
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
            if (SupportMapFragment.b()) {
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
        private boolean d;
        private boolean e;
        private HuaweiMapOptions f;
        private final List<OnMapReadyCallback> g;

        public mab(Fragment fragment, IMapFragmentDelegate iMapFragmentDelegate, Activity activity) {
            this.d = false;
            this.e = false;
            this.g = new ArrayList();
            this.b = (IMapFragmentDelegate) Preconditions.checkNotNull(iMapFragmentDelegate);
            this.a = (Fragment) Preconditions.checkNotNull(fragment);
            this.c = activity;
        }

        public mab(Fragment fragment, boolean z) {
            this.d = false;
            this.e = false;
            this.g = new ArrayList();
            this.e = z;
            this.a = (Fragment) Preconditions.checkNotNull(fragment);
        }

        private void a() {
            MapsInitializer.initialize(this.c);
            MapFragmentDelegate mapFragmentDelegate = new MapFragmentDelegate(this.c, this.f, this.e);
            this.b = mapFragmentDelegate;
            try {
                mapFragmentDelegate.onAttach(ObjectWrapper.wrap(this.c));
            } catch (RemoteException unused) {
                LogM.w("SupportMapFragment", "exception");
            }
            HuaweiMapOptions huaweiMapOptions = this.f;
            if (huaweiMapOptions != null && huaweiMapOptions.getSupportChina().booleanValue()) {
                MapClientIdentify.setSupportChina(true);
            }
            Iterator<OnMapReadyCallback> it = this.g.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            this.g.clear();
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
                this.g.add(onMapReadyCallback);
                return;
            }
            try {
                iMapFragmentDelegate.getMapAsync(new IOnMapReadyCallback.Stub() { // from class: com.huawei.hms.maps.SupportMapFragment.mab.1
                    @Override // com.huawei.hms.maps.internal.IOnMapReadyCallback
                    public void onMapReady(IHuaweiMapDelegate iHuaweiMapDelegate) {
                        if (onMapReadyCallback == null) {
                            LogM.w("SupportMapFragment", "onMapReady: mapReadyCallback is null");
                            return;
                        }
                        LogM.i("SupportMapFragment", "onMapReady: mapReadyCallback is not null");
                        if (!MapsAdvUtil.containsMapsAdvance()) {
                            onMapReadyCallback.onMapReady(new HuaweiMap(iHuaweiMapDelegate));
                            return;
                        }
                        LogM.i("SupportMapFragment", "onMapReady: fullsdk ");
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
                    this.f = huaweiMapOptions;
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
                    LogM.d("SupportMapFragment", "onDestroy: execute clearResource in onDestroy method, but activity is  running");
                } else {
                    LogM.d("SupportMapFragment", "clearResource in onDestroy method");
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
                LogM.e("SupportMapFragment", "onInflate Bundle is null!");
                return;
            }
            this.f = (HuaweiMapOptions) bundle.getParcelable("HuaweiMapOptions");
            try {
                if (MapsAdvUtil.containsMapsBasic()) {
                    a();
                }
                this.b.onInflate(ObjectWrapper.wrap(activity), this.f, com.huawei.hms.maps.internal.mad.a(bundle2));
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
                LogM.d("SupportMapFragment", "clearResource in onPause method");
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

    public SupportMapFragment() {
        if (MapsInitializer.a()) {
            this.b = MapsAdvUtil.containsMapsBasic() ? new mab(this, false) : new maa(this);
        } else {
            LogM.e("SupportMapFragment", "MapsInitializer is not initialized.");
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

    public static SupportMapFragment newInstance() {
        return new SupportMapFragment();
    }

    public static SupportMapFragment newInstance(HuaweiMapOptions huaweiMapOptions) {
        LogM.i("SupportMapFragment", "SupportMapFragment construct");
        SupportMapFragment supportMapFragment = new SupportMapFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("HuaweiMapOptions", huaweiMapOptions);
        supportMapFragment.setArguments(bundle);
        return supportMapFragment;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public /* bridge */ /* synthetic */ CreationExtras getDefaultViewModelCreationExtras() {
        return CreationExtras.Empty.INSTANCE;
    }

    public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
        LogM.d("SupportMapFragment", "getMapAsync: ");
        mac macVar = this.b;
        if (macVar != null) {
            macVar.a(onMapReadyCallback);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportMapFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        LogM.d("SupportMapFragment", "onAttach");
        super.onAttach(activity);
        mac macVar = this.b;
        if (macVar != null) {
            macVar.a(activity);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.b == null) {
            LogM.e("SupportMapFragment", "MapsInitializer is not initialized.");
            return;
        }
        a(true);
        com.huawei.hms.maps.internal.mac.e(getActivity());
        com.huawei.hms.maps.internal.mac.b(true);
        if (MapsAdvUtil.containsMapsBasic()) {
            com.huawei.hms.maps.common.util.maa.a(getActivity());
            AuthClient.getInstance().startAuth(getActivity());
        }
        this.b.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        LogM.d("SupportMapFragment", "onCreateView: ");
        if (this.b == null) {
            LogM.e("SupportMapFragment", "MapsInitializer is not initialized.");
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

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        LogM.d("SupportMapFragment", "onDestroy");
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onDestroy();
        }
        HmsUtil.setRepeatFlag(true);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        LogM.d("SupportMapFragment", "onDestroyView");
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onDestroyView();
        }
        super.onDestroyView();
    }

    public final void onEnterAmbient(Bundle bundle) {
        LogM.d("SupportMapFragment", "onEnterAmbient: ");
    }

    public final void onExitAmbient() {
        LogM.d("SupportMapFragment", "onExitAmbient: ");
    }

    @Override // androidx.fragment.app.Fragment
    @SuppressLint({"NewApi"})
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        LogM.d("SupportMapFragment", "onInflate");
        if (this.b == null) {
            LogM.e("SupportMapFragment", "MapsInitializer is not initialized.");
            super.onInflate(activity, attributeSet, bundle);
            return;
        }
        MapClientIdentify.setMapAuthStartTime(System.currentTimeMillis());
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            LogM.d("SupportMapFragment", "onInflate");
            super.onInflate(activity, attributeSet, bundle);
            HuaweiMapOptions huaweiMapOptionsCreateFromAttributes = HuaweiMapOptions.createFromAttributes(activity, attributeSet);
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

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        LogM.d("SupportMapFragment", "onLowMemory");
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onLowMemory();
        }
        super.onLowMemory();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onPause();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        a(false);
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onResume();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        LogM.d("SupportMapFragment", "onSaveInstanceState");
        if (bundle != null) {
            bundle.setClassLoader(SupportMapFragment.class.getClassLoader());
            super.onSaveInstanceState(bundle);
            mac macVar = this.b;
            if (macVar != null) {
                macVar.onSaveInstanceState(bundle);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onStart();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        mac macVar = this.b;
        if (macVar != null) {
            macVar.onStop();
        }
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
