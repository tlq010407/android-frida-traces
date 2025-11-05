package com.huawei.hms.maps;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.huawei.hms.common.Preconditions;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.feature.dynamic.OnDelegateCreatedListener;
import com.huawei.hms.maps.internal.HmsUtil;
import com.huawei.hms.maps.internal.ICreator;
import com.huawei.hms.maps.internal.IOnStreetViewPanoramaReadyCallback;
import com.huawei.hms.maps.internal.IStreetViewPanoramaDelegate;
import com.huawei.hms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.huawei.hms.maps.model.RuntimeRemoteException;
import com.huawei.hms.maps.utils.LogM;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@TargetApi(11)
@Deprecated
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class StreetViewPanoramaFragment extends Fragment {
    private static boolean a = false;
    private final maa b = new maa(this);

    static class maa extends com.huawei.hms.maps.maa<mab> {
        private final Fragment f;
        private OnDelegateCreatedListener<mab> h;
        private Activity i;
        private StreetViewPanoramaOptions j;
        private final List<OnStreetViewPanoramaReadyCallback> g = new ArrayList();
        private boolean k = false;

        maa(Fragment fragment) {
            this.f = fragment;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Activity activity) throws InterruptedException {
            this.i = activity;
            c();
        }

        private IStreetViewPanoramaFragmentDelegate b(ICreator iCreator) {
            IStreetViewPanoramaFragmentDelegate iStreetViewPanoramaFragmentDelegateOptStreetViewPanoramaFragmentDelegate = null;
            try {
                iStreetViewPanoramaFragmentDelegateOptStreetViewPanoramaFragmentDelegate = iCreator.optStreetViewPanoramaFragmentDelegate(ObjectWrapper.wrap(com.huawei.hms.maps.internal.mac.d(this.i)), this.j);
                LogM.i("StreetViewPanoramaFragm", "createDelegate: sdk onCreateView creator " + iCreator);
                return iStreetViewPanoramaFragmentDelegateOptStreetViewPanoramaFragmentDelegate;
            } catch (RemoteException e) {
                LogM.e("StreetViewPanoramaFragm", "RemoteException: " + e.toString());
                return iStreetViewPanoramaFragmentDelegateOptStreetViewPanoramaFragmentDelegate;
            }
        }

        private boolean b() {
            return this.i == null || this.h == null || getDelegate() != 0;
        }

        private void c() throws InterruptedException {
            if (!b() && d()) {
                ICreator iCreatorA = com.huawei.hms.maps.internal.mac.a(this.i);
                if (iCreatorA == null) {
                    a((Context) this.i);
                } else {
                    a(iCreatorA);
                }
            }
        }

        private boolean d() throws NumberFormatException {
            MapsInitializer.initialize(this.i);
            int iIsHmsAvailable = HmsUtil.isHmsAvailable(this.i);
            if (iIsHmsAvailable == 0) {
                return true;
            }
            LogM.e("StreetViewPanoramaFragm", "not load map hmsState = " + iIsHmsAvailable);
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            if (getDelegate() != 0) {
                ((mab) getDelegate()).getStreetViewPanoramaAsync(onStreetViewPanoramaReadyCallback);
            } else {
                this.g.add(onStreetViewPanoramaReadyCallback);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.huawei.hms.maps.maa
        protected void a(ICreator iCreator) throws InterruptedException {
            LogM.i("StreetViewPanoramaFragm", "createDelegate: initDelegateFlag = " + this.k);
            if (this.k) {
                return;
            }
            this.k = true;
            try {
                MapClientIdentify mapClientIdentify = new MapClientIdentify();
                Context contextD = com.huawei.hms.maps.internal.mac.d(this.i);
                mapClientIdentify.regestIdentity(this.i, iCreator);
                Bundle arguments = this.f.getArguments();
                if (arguments != null && arguments.containsKey("StreetOptions")) {
                    this.j = (StreetViewPanoramaOptions) arguments.getParcelable("StreetOptions");
                }
                IStreetViewPanoramaFragmentDelegate iStreetViewPanoramaFragmentDelegateOptStreetViewPanoramaFragmentDelegate = iCreator.optStreetViewPanoramaFragmentDelegate(ObjectWrapper.wrap(contextD), this.j);
                if (iStreetViewPanoramaFragmentDelegateOptStreetViewPanoramaFragmentDelegate == null) {
                    iStreetViewPanoramaFragmentDelegateOptStreetViewPanoramaFragmentDelegate = b(iCreator);
                }
                if (iStreetViewPanoramaFragmentDelegateOptStreetViewPanoramaFragmentDelegate == null) {
                    LogM.w("StreetViewPanoramaFragm", "createDelegate: streetViewPanoramaFragmentDelegate is null");
                    this.k = false;
                    return;
                }
                OnDelegateCreatedListener<mab> onDelegateCreatedListener = this.h;
                if (onDelegateCreatedListener != null) {
                    onDelegateCreatedListener.onDelegateCreated(new mab(this.f, iStreetViewPanoramaFragmentDelegateOptStreetViewPanoramaFragmentDelegate, this.i));
                }
                Iterator<OnStreetViewPanoramaReadyCallback> it = this.g.iterator();
                while (it.hasNext()) {
                    ((mab) getDelegate()).getStreetViewPanoramaAsync(it.next());
                }
                this.g.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper
        public final void createDelegate(OnDelegateCreatedListener<mab> onDelegateCreatedListener) throws InterruptedException {
            if (StreetViewPanoramaFragment.b()) {
                return;
            }
            this.h = onDelegateCreatedListener;
            c();
        }
    }

    static class mab implements StreetLifecycleDelegate {
        private final Fragment a;
        private IStreetViewPanoramaFragmentDelegate b;
        private Activity c;

        public mab(Fragment fragment, IStreetViewPanoramaFragmentDelegate iStreetViewPanoramaFragmentDelegate, Activity activity) {
            this.b = (IStreetViewPanoramaFragmentDelegate) Preconditions.checkNotNull(iStreetViewPanoramaFragmentDelegate);
            this.a = (Fragment) Preconditions.checkNotNull(fragment);
            this.c = activity;
        }

        @Override // com.huawei.hms.maps.StreetLifecycleDelegate
        public void getStreetViewPanoramaAsync(final OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            try {
                this.b.getStreetViewPanoramaAsync(new IOnStreetViewPanoramaReadyCallback.Stub() { // from class: com.huawei.hms.maps.StreetViewPanoramaFragment.mab.1
                    @Override // com.huawei.hms.maps.internal.IOnStreetViewPanoramaReadyCallback
                    public void onStreetViewPanoramaReadyCallback(IStreetViewPanoramaDelegate iStreetViewPanoramaDelegate) {
                        onStreetViewPanoramaReadyCallback.onStreetViewPanoramaReady(new StreetViewPanorama(iStreetViewPanoramaDelegate));
                    }
                });
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onCreate(Bundle bundle) {
            try {
                Bundle bundleA = com.huawei.hms.maps.internal.mad.a(bundle);
                Bundle arguments = this.a.getArguments();
                if (arguments != null && arguments.containsKey("StreetOptions")) {
                    com.huawei.hms.maps.internal.mad.a(bundleA, "StreetOptions", arguments.getParcelable("StreetOptions"));
                }
                this.b.onCreate(bundleA);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws InterruptedException {
            try {
                Bundle bundleA = com.huawei.hms.maps.internal.mad.a(bundle);
                Context contextD = com.huawei.hms.maps.internal.mac.d(this.c);
                if (this.b == null) {
                    return LayoutInflater.from(contextD).inflate(R.layout.empty_layout, (ViewGroup) null);
                }
                LogM.i("StreetViewPanoramaFragm", "sdk onCreateView iStreetViewPanoramaFragmentDelegate" + this.b);
                return (View) ObjectWrapper.unwrap(this.b.onCreateView(ObjectWrapper.wrap(LayoutInflater.from(contextD)), ObjectWrapper.wrap(viewGroup), bundleA));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onDestroy() {
            try {
                this.b.onDestroy();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onDestroyView() {
            try {
                this.b.onDestroyView();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                LogM.e("StreetViewPanoramaFragm", "onInflate Bundle is null!");
                return;
            }
            StreetViewPanoramaOptions streetViewPanoramaOptions = (StreetViewPanoramaOptions) bundle.getParcelable("StreetOptions");
            try {
                this.b.onInflate(ObjectWrapper.wrap(activity), streetViewPanoramaOptions, com.huawei.hms.maps.internal.mad.a(bundle2));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
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
                this.b.onPause();
                Activity activity = this.c;
                if (activity == null || !activity.isFinishing()) {
                    return;
                }
                LogM.d("StreetViewPanoramaFragm", "clearResource in onPause method");
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onResume() {
            try {
                LogM.d("StreetViewPanoramaFragm", "StreetFragmentDelegate:onResume");
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
                LogM.d("StreetViewPanoramaFragm", "StreetFragmentDelegate:onStart");
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

    private static void a(boolean z) {
        a = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b() {
        return a;
    }

    public static StreetViewPanoramaFragment newInstance() {
        return new StreetViewPanoramaFragment();
    }

    public static StreetViewPanoramaFragment newInstance(StreetViewPanoramaOptions streetViewPanoramaOptions) {
        LogM.i("StreetViewPanoramaFragm", "StreetViewPanoramaFragment construct");
        StreetViewPanoramaFragment streetViewPanoramaFragment = new StreetViewPanoramaFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("StreetOptions", streetViewPanoramaOptions);
        streetViewPanoramaFragment.setArguments(bundle);
        return streetViewPanoramaFragment;
    }

    public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
        LogM.d("StreetViewPanoramaFragm", "getStreetViewPanoramaAsync");
        this.b.a(onStreetViewPanoramaReadyCallback);
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) throws InterruptedException {
        LogM.d("StreetViewPanoramaFragm", "onAttach");
        super.onAttach(activity);
        this.b.a(activity);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a(true);
        com.huawei.hms.maps.internal.mac.e(getActivity());
        com.huawei.hms.maps.internal.mac.b(true);
        this.b.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = this.b.onCreateView(layoutInflater, viewGroup, bundle);
        viewOnCreateView.setClickable(true);
        return viewOnCreateView;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        HmsUtil.setRepeatFlag(true);
        this.b.onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.b.onDestroyView();
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    @SuppressLint({"NewApi"})
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            LogM.d("StreetViewPanoramaFragm", "onInflate");
            super.onInflate(activity, attributeSet, bundle);
            StreetViewPanoramaOptions streetViewPanoramaOptions = new StreetViewPanoramaOptions();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("CONSTANTS_STREET_OPTIONS", streetViewPanoramaOptions);
            this.b.a(activity);
            this.b.onInflate(activity, bundle2, bundle);
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.b.onLowMemory();
        super.onLowMemory();
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        this.b.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        a(false);
        this.b.onResume();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.b.onStart();
    }

    @Override // android.app.Fragment
    public void onStop() {
        this.b.onStop();
        super.onStop();
    }

    @Override // android.app.Fragment
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
