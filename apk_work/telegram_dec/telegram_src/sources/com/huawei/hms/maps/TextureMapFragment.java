package com.huawei.hms.maps;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.huawei.hms.maps.MapFragment;
import com.huawei.hms.maps.auth.AuthClient;
import com.huawei.hms.maps.internal.HmsUtil;
import com.huawei.hms.maps.utils.LogM;
import com.huawei.hms.maps.utils.MapsAdvUtil;

@TargetApi(11)
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TextureMapFragment extends Fragment {
    private final mac a;

    public TextureMapFragment() {
        if (MapsInitializer.a()) {
            this.a = MapsAdvUtil.containsMapsBasic() ? new MapFragment.mab(this) : new MapFragment.maa(this, true);
        } else {
            LogM.e("MapFragment", "MapsInitializer is not initialized.");
            this.a = null;
        }
    }

    public static TextureMapFragment newInstance() {
        return new TextureMapFragment();
    }

    public static TextureMapFragment newInstance(HuaweiMapOptions huaweiMapOptions) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("HuaweiMapOptions", huaweiMapOptions);
        TextureMapFragment textureMapFragment = new TextureMapFragment();
        textureMapFragment.setArguments(bundle);
        return textureMapFragment;
    }

    public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
        LogM.d("MapFragment", "getMapAsync: ");
        mac macVar = this.a;
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
        super.onAttach(activity);
        mac macVar = this.a;
        if (macVar != null) {
            macVar.a(activity);
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        LogM.d("MapFragment", "onCreate: ");
        super.onCreate(bundle);
        if (this.a == null) {
            LogM.e("MapFragment", "MapsInitializer is not initialized.");
            return;
        }
        if (MapsAdvUtil.containsMapsBasic()) {
            com.huawei.hms.maps.common.util.maa.a(getActivity());
            AuthClient.getInstance().startAuth(getActivity());
        }
        this.a.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        LogM.d("MapFragment", "onCreateView: ");
        if (this.a == null) {
            LogM.e("MapFragment", "MapsInitializer is not initialized.");
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

    @Override // android.app.Fragment
    public void onDestroy() {
        LogM.d("MapFragment", "onDestroy: ");
        mac macVar = this.a;
        if (macVar != null) {
            macVar.onDestroy();
        }
        HmsUtil.setRepeatFlag(true);
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        mac macVar = this.a;
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
        if (this.a == null) {
            LogM.e("MapFragment", "MapsInitializer is not initialized.");
            super.onInflate(activity, attributeSet, bundle);
            return;
        }
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
            this.a.a(activity);
            this.a.onInflate(activity, bundle2, bundle);
            StrictMode.setThreadPolicy(threadPolicy);
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(threadPolicy);
            throw th;
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        LogM.d("MapFragment", "onLowMemory: ");
        mac macVar = this.a;
        if (macVar != null) {
            macVar.onLowMemory();
        }
        super.onLowMemory();
    }

    @Override // android.app.Fragment
    public void onPause() {
        LogM.d("MapFragment", "onPause: ");
        mac macVar = this.a;
        if (macVar != null) {
            macVar.onPause();
        }
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        mac macVar = this.a;
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
            mac macVar = this.a;
            if (macVar != null) {
                macVar.onSaveInstanceState(bundle);
            }
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        mac macVar = this.a;
        if (macVar != null) {
            macVar.onStart();
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        mac macVar = this.a;
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
