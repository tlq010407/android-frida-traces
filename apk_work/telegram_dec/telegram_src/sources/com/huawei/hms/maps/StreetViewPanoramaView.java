package com.huawei.hms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.huawei.hms.common.Preconditions;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.feature.dynamic.OnDelegateCreatedListener;
import com.huawei.hms.maps.internal.HmsUtil;
import com.huawei.hms.maps.internal.ICreator;
import com.huawei.hms.maps.internal.IOnStreetViewPanoramaReadyCallback;
import com.huawei.hms.maps.internal.IStreetViewPanoramaDelegate;
import com.huawei.hms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.huawei.hms.maps.model.RuntimeRemoteException;
import com.huawei.hms.maps.utils.LogM;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Deprecated
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class StreetViewPanoramaView extends FrameLayout {
    private static boolean a = false;
    private StreetViewDeferredLifecycleHelper b;

    static class StreetViewDeferredLifecycleHelper extends maa<StreetViewLifecycleDelegate> {
        private ViewGroup f;
        private Context g;
        private OnDelegateCreatedListener<StreetViewLifecycleDelegate> h;
        private StreetViewPanoramaOptions i;
        private List<OnStreetViewPanoramaReadyCallback> j = new ArrayList();
        private boolean k = false;

        StreetViewDeferredLifecycleHelper(ViewGroup viewGroup, Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
            this.f = viewGroup;
            this.g = context;
            this.i = streetViewPanoramaOptions;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.huawei.hms.maps.maa
        protected void a(ICreator iCreator) throws InterruptedException {
            LogM.i("StreetViewPanoramaView", "createDelegate: initDelegateFlag = " + this.k);
            if (this.k) {
                return;
            }
            this.k = true;
            try {
                MapClientIdentify mapClientIdentify = new MapClientIdentify();
                Context contextD = com.huawei.hms.maps.internal.mac.d(this.g);
                mapClientIdentify.regestIdentity(this.g, iCreator);
                IStreetViewPanoramaViewDelegate iStreetViewPanoramaViewDelegateNewStreetViewPanoramaViewDelegate = iCreator.newStreetViewPanoramaViewDelegate(ObjectWrapper.wrap(contextD), this.i);
                LogM.i("StreetViewPanoramaView", "createDelegate: sdk MapView constructor streetViewPanoramaViewDelegate:" + iStreetViewPanoramaViewDelegateNewStreetViewPanoramaViewDelegate);
                if (iStreetViewPanoramaViewDelegateNewStreetViewPanoramaViewDelegate == null) {
                    LogM.w("StreetViewPanoramaView", "createDelegate: streetViewPanoramaViewDelegate is null");
                    this.k = false;
                    return;
                }
                OnDelegateCreatedListener<StreetViewLifecycleDelegate> onDelegateCreatedListener = this.h;
                if (onDelegateCreatedListener != null) {
                    onDelegateCreatedListener.onDelegateCreated(new StreetViewLifecycleDelegate(this.f, iStreetViewPanoramaViewDelegateNewStreetViewPanoramaViewDelegate));
                }
                Iterator<OnStreetViewPanoramaReadyCallback> it = this.j.iterator();
                while (it.hasNext()) {
                    ((StreetViewLifecycleDelegate) getDelegate()).getStreetViewPanoramaAsync(it.next());
                }
                this.j.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper
        public void createDelegate(OnDelegateCreatedListener<StreetViewLifecycleDelegate> onDelegateCreatedListener) throws InterruptedException, NumberFormatException {
            if (StreetViewPanoramaView.b()) {
                return;
            }
            this.h = onDelegateCreatedListener;
            if (onDelegateCreatedListener == null || getDelegate() != 0) {
                return;
            }
            MapsInitializer.initialize(this.g);
            int iIsHmsAvailable = HmsUtil.isHmsAvailable(this.g);
            if (iIsHmsAvailable != 0) {
                LogM.e("StreetViewPanoramaView", "not load map hmsState = " + iIsHmsAvailable);
                return;
            }
            ICreator iCreatorA = com.huawei.hms.maps.internal.mac.a(this.g);
            if (iCreatorA == null) {
                a(this.g);
            } else {
                a(iCreatorA);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            if (getDelegate() != 0) {
                ((StreetViewLifecycleDelegate) getDelegate()).getStreetViewPanoramaAsync(onStreetViewPanoramaReadyCallback);
            } else {
                this.j.add(onStreetViewPanoramaReadyCallback);
            }
        }
    }

    static class StreetViewLifecycleDelegate implements StreetLifecycleDelegate {
        private ViewGroup a;
        private IStreetViewPanoramaViewDelegate b;
        private View c;

        public StreetViewLifecycleDelegate(ViewGroup viewGroup, IStreetViewPanoramaViewDelegate iStreetViewPanoramaViewDelegate) {
            this.a = (ViewGroup) Preconditions.checkNotNull(viewGroup);
            this.b = (IStreetViewPanoramaViewDelegate) Preconditions.checkNotNull(iStreetViewPanoramaViewDelegate);
        }

        @Override // com.huawei.hms.maps.StreetLifecycleDelegate
        public void getStreetViewPanoramaAsync(final OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            try {
                this.b.getStreetViewPanoramaAsync(new IOnStreetViewPanoramaReadyCallback.Stub() { // from class: com.huawei.hms.maps.StreetViewPanoramaView.StreetViewLifecycleDelegate.1
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
                this.b.onCreate(com.huawei.hms.maps.internal.mad.a(bundle));
                this.c = (View) ObjectWrapper.unwrap(this.b.getView());
                this.a.removeAllViews();
                this.a.addView(this.c);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
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
            throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public final void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
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
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onResume() {
            try {
                LogM.d("StreetViewPanoramaView", "MapView:onResume");
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
                LogM.d("StreetViewPanoramaView", "MapView:onStart");
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

    public StreetViewPanoramaView(Context context) {
        super(context);
        this.b = new StreetViewDeferredLifecycleHelper(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public StreetViewPanoramaView(Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
        super(context);
        this.b = new StreetViewDeferredLifecycleHelper(this, context, streetViewPanoramaOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b() {
        return a;
    }

    private static void setFlag(boolean z) {
        a = z;
    }

    public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
        LogM.d("StreetViewPanoramaView", "getStreetViewPanoramaAsync");
        this.b.getStreetViewPanoramaAsync(onStreetViewPanoramaReadyCallback);
    }

    public final void onCreate(Bundle bundle) {
        LogM.d("StreetViewPanoramaView", "onCreate");
        setFlag(true);
        com.huawei.hms.maps.internal.mac.e(getContext());
        com.huawei.hms.maps.internal.mac.b(true);
        this.b.onCreate(bundle);
    }

    public final void onDestroy() {
        LogM.d("StreetViewPanoramaView", "onDestroy");
        HmsUtil.setRepeatFlag(true);
        this.b.onDestroy();
    }

    public final void onLowMemory() {
        LogM.d("StreetViewPanoramaView", "onLowMemory");
        this.b.onLowMemory();
    }

    public final void onPause() {
        LogM.d("StreetViewPanoramaView", "onPause");
        this.b.onPause();
    }

    public final void onResume() {
        LogM.d("StreetViewPanoramaView", "onResume");
        setFlag(false);
        this.b.onResume();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        LogM.d("StreetViewPanoramaView", "onSaveInstanceState");
        this.b.onSaveInstanceState(bundle);
    }
}
