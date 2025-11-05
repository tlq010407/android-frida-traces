package com.huawei.hms.maps;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.huawei.hms.maps.SupportMapFragment;
import com.huawei.hms.maps.auth.AuthClient;
import com.huawei.hms.maps.internal.HmsUtil;
import com.huawei.hms.maps.utils.LogM;
import com.huawei.hms.maps.utils.MapsAdvUtil;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TextureSupportMapFragment extends Fragment {
    private final mac a;

    public TextureSupportMapFragment() {
        if (MapsInitializer.a()) {
            this.a = MapsAdvUtil.containsMapsBasic() ? new SupportMapFragment.mab(this, true) : new SupportMapFragment.maa(this, true);
        } else {
            LogM.e("TextureSupportFragment", "MapsInitializer is not initialized.");
            this.a = null;
        }
    }

    public static TextureSupportMapFragment newInstance() {
        return new TextureSupportMapFragment();
    }

    public static TextureSupportMapFragment newInstance(HuaweiMapOptions huaweiMapOptions) {
        LogM.i("TextureSupportFragment", "TextureSupportMapFragment construct");
        Bundle bundle = new Bundle();
        bundle.putParcelable("HuaweiMapOptions", huaweiMapOptions);
        TextureSupportMapFragment textureSupportMapFragment = new TextureSupportMapFragment();
        textureSupportMapFragment.setArguments(bundle);
        return textureSupportMapFragment;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public /* bridge */ /* synthetic */ CreationExtras getDefaultViewModelCreationExtras() {
        return CreationExtras.Empty.INSTANCE;
    }

    public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
        LogM.d("TextureSupportFragment", "getMapAsync: ");
        mac macVar = this.a;
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
        LogM.d("TextureSupportFragment", "onAttach");
        super.onAttach(activity);
        mac macVar = this.a;
        if (macVar != null) {
            macVar.a(activity);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.a == null) {
            LogM.e("TextureSupportFragment", "MapsInitializer is not initialized.");
            return;
        }
        if (MapsAdvUtil.containsMapsBasic()) {
            com.huawei.hms.maps.common.util.maa.a(getActivity());
            AuthClient.getInstance().startAuth(getActivity());
        }
        this.a.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        LogM.d("TextureSupportFragment", "onCreateView: ");
        if (this.a == null) {
            LogM.e("TextureSupportFragment", "MapsInitializer is not initialized.");
            return new View(getActivity());
        }
        if (MapClientIdentify.getMapAuthStartTime() == 0) {
            MapClientIdentify.setMapAuthStartTime(System.currentTimeMillis());
        }
        View viewOnCreateView = this.a.onCreateView(layoutInflater, viewGroup, bundle);
        viewOnCreateView.setBackground(new mae().a(viewOnCreateView));
        viewOnCreateView.setClickable(true);
        return viewOnCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        LogM.d("TextureSupportFragment", "onDestroy");
        mac macVar = this.a;
        if (macVar != null) {
            macVar.onDestroy();
        }
        HmsUtil.setRepeatFlag(true);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        LogM.d("TextureSupportFragment", "onDestroyView");
        mac macVar = this.a;
        if (macVar != null) {
            macVar.onDestroyView();
        }
        super.onDestroyView();
    }

    public final void onEnterAmbient(Bundle bundle) {
        LogM.d("TextureSupportFragment", "onEnterAmbient: ");
    }

    public final void onExitAmbient() {
        LogM.d("TextureSupportFragment", "onExitAmbient: ");
    }

    @Override // androidx.fragment.app.Fragment
    @SuppressLint({"NewApi"})
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        LogM.d("TextureSupportFragment", "onInflate");
        if (this.a == null) {
            LogM.e("TextureSupportFragment", "MapsInitializer is not initialized.");
            super.onInflate(activity, attributeSet, bundle);
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            LogM.d("TextureSupportFragment", "onInflate");
            super.onInflate(activity, attributeSet, bundle);
            HuaweiMapOptions huaweiMapOptionsCreateFromAttributes = HuaweiMapOptions.createFromAttributes(activity, attributeSet);
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("HuaweiMapOptions", huaweiMapOptionsCreateFromAttributes);
            if (getArguments() == null) {
                setArguments(bundle2);
            }
            this.a.a(activity);
            this.a.onInflate(activity, bundle2, bundle);
            StrictMode.setThreadPolicy(threadPolicy);
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(threadPolicy);
            throw th;
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        LogM.d("TextureSupportFragment", "onLowMemory");
        mac macVar = this.a;
        if (macVar != null) {
            macVar.onLowMemory();
        }
        super.onLowMemory();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        mac macVar = this.a;
        if (macVar != null) {
            macVar.onPause();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        mac macVar = this.a;
        if (macVar != null) {
            macVar.onResume();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        LogM.d("TextureSupportFragment", "onSaveInstanceState");
        if (bundle != null) {
            bundle.setClassLoader(SupportMapFragment.class.getClassLoader());
            super.onSaveInstanceState(bundle);
            mac macVar = this.a;
            if (macVar != null) {
                macVar.onSaveInstanceState(bundle);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        mac macVar = this.a;
        if (macVar != null) {
            macVar.onStart();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        mac macVar = this.a;
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
