package com.huawei.hms.maps.internal;

import android.location.Location;
import android.os.RemoteException;
import com.huawei.hms.maps.LocationSource;
import com.huawei.hms.maps.internal.ILocationSourceDelegate;
import com.huawei.hms.maps.utils.LogM;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class mab extends ILocationSourceDelegate.Stub {
    private LocationSource a;

    public static class maa implements LocationSource.OnLocationChangedListener {
        IOnLocationChangeListener a;

        public maa(IOnLocationChangeListener iOnLocationChangeListener) {
            this.a = iOnLocationChangeListener;
        }

        @Override // com.huawei.hms.maps.LocationSource.OnLocationChangedListener
        public void onLocationChanged(Location location) {
            try {
                this.a.onLocationChange(location);
            } catch (RemoteException unused) {
                LogM.e("LocationSourceDelegate", "onLocationChanged RemoteException ");
            }
        }
    }

    public mab(LocationSource locationSource) {
        this.a = locationSource;
    }

    @Override // com.huawei.hms.maps.internal.ILocationSourceDelegate
    public void activate(IOnLocationChangeListener iOnLocationChangeListener) {
        LogM.d("LocationSourceDelegate", "active");
        this.a.activate(new maa(iOnLocationChangeListener));
    }

    @Override // com.huawei.hms.maps.internal.ILocationSourceDelegate
    public void deactivate() {
        LogM.d("LocationSourceDelegate", "deactivate");
        this.a.deactivate();
    }
}
