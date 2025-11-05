package com.huawei.hms.maps;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.viewmodel.CreationExtras;
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

@Deprecated
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class SupportStreetViewPanoramaFragment extends Fragment {
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
        public void a(Activity activity) throws InterruptedException, NumberFormatException {
            this.i = activity;
            c();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void a(IStreetViewPanoramaFragmentDelegate iStreetViewPanoramaFragmentDelegate) {
            OnDelegateCreatedListener<mab> onDelegateCreatedListener = this.h;
            if (onDelegateCreatedListener != null) {
                onDelegateCreatedListener.onDelegateCreated(new mab(this.f, iStreetViewPanoramaFragmentDelegate, this.i));
            }
            Iterator<OnStreetViewPanoramaReadyCallback> it = this.g.iterator();
            while (it.hasNext()) {
                ((mab) getDelegate()).getStreetViewPanoramaAsync(it.next());
            }
            this.g.clear();
        }

        private boolean b() {
            return this.i == null || this.h == null || getDelegate() != 0;
        }

        private void c() throws InterruptedException, NumberFormatException {
            if (b()) {
                return;
            }
            MapsInitializer.initialize(this.i);
            int iIsHmsAvailable = HmsUtil.isHmsAvailable(this.i);
            if (iIsHmsAvailable != 0) {
                LogM.e("SupportStreetViewPanoramaFragment", "not load map hmsState = " + iIsHmsAvailable);
                return;
            }
            ICreator iCreatorA = com.huawei.hms.maps.internal.mac.a(this.i);
            if (iCreatorA == null) {
                a((Context) this.i);
            } else {
                a(iCreatorA);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            if (getDelegate() != 0) {
                ((mab) getDelegate()).getStreetViewPanoramaAsync(onStreetViewPanoramaReadyCallback);
            } else {
                this.g.add(onStreetViewPanoramaReadyCallback);
            }
        }

        @Override // com.huawei.hms.maps.maa
        protected void a(ICreator iCreator) throws InterruptedException {
            LogM.i("SupportStreetViewPanoramaFragment", "createDelegate: initDelegateFlag = " + this.k);
            if (this.k) {
                return;
            }
            this.k = true;
            try {
                MapClientIdentify mapClientIdentify = new MapClientIdentify();
                Context contextD = com.huawei.hms.maps.internal.mac.d(this.i);
                mapClientIdentify.regestIdentity(this.i, iCreator);
                Bundle arguments = this.f.getArguments();
                if (arguments != null && arguments.containsKey("HuaweiMapOptions")) {
                    this.j = (StreetViewPanoramaOptions) arguments.getParcelable("HuaweiMapOptions");
                }
                IStreetViewPanoramaFragmentDelegate iStreetViewPanoramaFragmentDelegateOptStreetViewPanoramaFragmentDelegate = iCreator.optStreetViewPanoramaFragmentDelegate(ObjectWrapper.wrap(contextD), this.j);
                if (iStreetViewPanoramaFragmentDelegateOptStreetViewPanoramaFragmentDelegate != null) {
                    a(iStreetViewPanoramaFragmentDelegateOptStreetViewPanoramaFragmentDelegate);
                } else {
                    LogM.e("SupportStreetViewPanoramaFragment", "createDelegate: supportStreetViewPanoramaFragmentDelegate is null");
                    this.k = false;
                }
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper
        public final void createDelegate(OnDelegateCreatedListener<mab> onDelegateCreatedListener) throws InterruptedException, NumberFormatException {
            if (SupportStreetViewPanoramaFragment.b()) {
                return;
            }
            this.h = onDelegateCreatedListener;
            c();
        }
    }

    static class mab implements StreetLifecycleDelegate {
        private final Fragment a;
        private final IStreetViewPanoramaFragmentDelegate b;
        private Activity c;

        public mab(Fragment fragment, IStreetViewPanoramaFragmentDelegate iStreetViewPanoramaFragmentDelegate, Activity activity) {
            this.b = (IStreetViewPanoramaFragmentDelegate) Preconditions.checkNotNull(iStreetViewPanoramaFragmentDelegate);
            this.a = (Fragment) Preconditions.checkNotNull(fragment);
            this.c = activity;
        }

        @Override // com.huawei.hms.maps.StreetLifecycleDelegate
        public final void getStreetViewPanoramaAsync(final OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            try {
                this.b.getStreetViewPanoramaAsync(new IOnStreetViewPanoramaReadyCallback.Stub() { // from class: com.huawei.hms.maps.SupportStreetViewPanoramaFragment.mab.1
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
        public final void onCreate(Bundle bundle) {
            try {
                Bundle bundleA = com.huawei.hms.maps.internal.mad.a(bundle);
                Bundle arguments = this.a.getArguments();
                if (arguments != null && arguments.containsKey("StreetViewOptions")) {
                    com.huawei.hms.maps.internal.mad.a(bundleA, "StreetViewOptions", arguments.getParcelable("StreetViewOptions"));
                }
                this.b.onCreate(bundleA);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws InterruptedException {
            try {
                Bundle bundleA = com.huawei.hms.maps.internal.mad.a(bundle);
                Context contextD = com.huawei.hms.maps.internal.mac.d(this.c);
                if (this.b == null) {
                    return LayoutInflater.from(contextD).inflate(R.layout.empty_layout, (ViewGroup) null);
                }
                LogM.i("SupportStreetViewPanoramaFragment", "sdk onCreateView iStreetViewFragmentDelegate" + this.b);
                return (View) ObjectWrapper.unwrap(this.b.onCreateView(ObjectWrapper.wrap(LayoutInflater.from(contextD)), ObjectWrapper.wrap(viewGroup), bundleA));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onDestroy() {
            try {
                this.b.onDestroy();
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
                LogM.e("SupportStreetViewPanoramaFragment", "onInflate Bundle is null!");
                return;
            }
            StreetViewPanoramaOptions streetViewPanoramaOptions = (StreetViewPanoramaOptions) bundle.getParcelable("StreetViewOptions");
            try {
                LogM.d("SupportStreetViewPanoramaFragment", "SupportStreetViewPanoramaFragment:onInflate");
                this.b.onInflate(ObjectWrapper.wrap(activity), streetViewPanoramaOptions, com.huawei.hms.maps.internal.mad.a(bundle2));
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
                this.b.onSaveInstanceState(bundle);
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

    private static void a(boolean z) {
        a = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b() {
        return a;
    }

    public static SupportStreetViewPanoramaFragment newInstance() {
        return new SupportStreetViewPanoramaFragment();
    }

    public static SupportStreetViewPanoramaFragment newInstance(StreetViewPanoramaOptions streetViewPanoramaOptions) {
        LogM.i("SupportStreetViewPanoramaFragment", "SupportStreetViewPanoramaFragment construct");
        SupportStreetViewPanoramaFragment supportStreetViewPanoramaFragment = new SupportStreetViewPanoramaFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("StreetViewOptions", streetViewPanoramaOptions);
        supportStreetViewPanoramaFragment.setArguments(bundle);
        return supportStreetViewPanoramaFragment;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public /* bridge */ /* synthetic */ CreationExtras getDefaultViewModelCreationExtras() {
        return CreationExtras.Empty.INSTANCE;
    }

    public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
        LogM.d("SupportStreetViewPanoramaFragment", "getStreetViewPanoramaAsync: ");
        this.b.a(onStreetViewPanoramaReadyCallback);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportStreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) throws InterruptedException, NumberFormatException {
        LogM.d("SupportStreetViewPanoramaFragment", "onAttach");
        super.onAttach(activity);
        this.b.a(activity);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a(true);
        com.huawei.hms.maps.internal.mac.e(getContext());
        com.huawei.hms.maps.internal.mac.b(true);
        this.b.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = this.b.onCreateView(layoutInflater, viewGroup, bundle);
        viewOnCreateView.setClickable(true);
        return viewOnCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        HmsUtil.setRepeatFlag(true);
        this.b.onDestroy();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.b.onDestroyView();
        super.onDestroyView();
    }

    public final void onEnterAmbient(Bundle bundle) {
        LogM.d("SupportStreetViewPanoramaFragment", "onEnterAmbient: ");
    }

    public final void onExitAmbient() {
        LogM.d("SupportStreetViewPanoramaFragment", "onExitAmbient: ");
    }

    @Override // androidx.fragment.app.Fragment
    @SuppressLint({"NewApi"})
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            LogM.d("SupportStreetViewPanoramaFragment", "onInflate");
            super.onInflate(activity, attributeSet, bundle);
            StreetViewPanoramaOptions streetViewPanoramaOptions = new StreetViewPanoramaOptions();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("StreetViewOptions", streetViewPanoramaOptions);
            this.b.a(activity);
            this.b.onInflate(activity, bundle2, bundle);
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.b.onLowMemory();
        super.onLowMemory();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.b.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        a(false);
        this.b.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportMapFragment.class.getClassLoader());
            super.onSaveInstanceState(bundle);
            this.b.onSaveInstanceState(bundle);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.b.onStart();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        this.b.onStop();
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
