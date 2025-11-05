package com.huawei.location.callback;

import android.location.Location;
import android.os.Bundle;
import com.huawei.hms.location.HwLocationResult;
import com.huawei.hms.support.api.entity.location.updates.RequestLocationUpdatesRequest;
import com.huawei.location.lite.common.exception.LocationServiceException;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.utils.Vw;
import com.huawei.secure.android.common.intent.SafeBundle;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ut extends d2 {
    private Location ut;
    private Location zp;

    public ut(RequestLocationUpdatesRequest requestLocationUpdatesRequest, oc ocVar) {
        this.dC = new Vw.yn().yn("Location_locationCallback").FB(requestLocationUpdatesRequest.getTid());
        this.yn = ocVar;
        this.E5 = requestLocationUpdatesRequest;
    }

    @Override // com.huawei.location.callback.d2, android.location.LocationListener
    public void onLocationChanged(Location location) {
        LogConsole.i("HwFusedCallback", "fused gnss location successful");
        if (com.huawei.location.FB.yn(this.E5)) {
            HwLocationResult hwLocationResult = new HwLocationResult();
            hwLocationResult.setLocation(location);
            LW(hwLocationResult);
        } else {
            try {
                com.huawei.location.logic.LW.yn().yn(this.E5.getUuid());
                LogConsole.i("HwFusedCallback", "request expiration and remove");
            } catch (LocationServiceException unused) {
                LogConsole.e("HwFusedCallback", "throw locationServiceException");
            }
        }
    }

    @Override // com.huawei.location.callback.d2
    public void yn(Bundle bundle) {
        HwLocationResult hwLocationResult = (HwLocationResult) new SafeBundle(bundle).getParcelable("hwLocationResult");
        if (FB(hwLocationResult)) {
            return;
        }
        Location location = hwLocationResult.getLocation();
        LogConsole.i("HwFusedCallback", "handlerFuesdLocation, location provider is " + location.getProvider());
        if ("gps".equals(location.getProvider())) {
            this.zp = new Location(location);
        } else {
            this.ut = new Location(location);
        }
        Location locationYn = yn(this.zp, this.ut);
        if (yn(locationYn)) {
            hwLocationResult.setLocation(locationYn);
            yn(hwLocationResult);
        }
    }

    @Override // com.huawei.location.callback.d2
    public void yn(boolean z, boolean z2) {
        if (z) {
            return;
        }
        yn(false);
    }
}
