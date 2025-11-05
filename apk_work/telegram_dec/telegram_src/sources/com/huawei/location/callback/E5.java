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
public class E5 extends d2 {
    public E5(RequestLocationUpdatesRequest requestLocationUpdatesRequest, oc ocVar) {
        this.dC = new Vw.yn().yn("Location_locationCallbackEx").FB(requestLocationUpdatesRequest.getTid());
        this.yn = ocVar;
        this.E5 = requestLocationUpdatesRequest;
    }

    @Override // com.huawei.location.callback.d2, android.location.LocationListener
    public void onLocationChanged(Location location) {
        LogConsole.i("HDLocationCallback", "gnss location successful");
        if (com.huawei.location.FB.yn(this.E5)) {
            HwLocationResult hwLocationResult = new HwLocationResult();
            hwLocationResult.setLocation(location);
            LW(hwLocationResult);
        } else {
            try {
                com.huawei.location.logic.LW.yn().yn(this.E5.getUuid());
                LogConsole.i("HDLocationCallback", "request expiration and remove");
            } catch (LocationServiceException unused) {
                LogConsole.e("HDLocationCallback", "HDLocationCallback throw locationServiceException");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @Override // com.huawei.location.callback.d2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void yn(Bundle bundle) {
        String str;
        LogConsole.i("HDLocationCallback", "handlerLocation");
        HwLocationResult hwLocationResult = (HwLocationResult) new SafeBundle(bundle).getParcelable("hwLocationResult");
        if (FB(hwLocationResult)) {
            return;
        }
        Location location = hwLocationResult.getLocation();
        if (location == null) {
            str = "modifySourceType location is Empty, modifySourceType fail.";
        } else {
            Bundle extras = location.getExtras();
            if (extras != null) {
                SafeBundle safeBundle = new SafeBundle(extras);
                if (safeBundle.containsKey("SourceType")) {
                    safeBundle.putInt("SourceType", extras.getInt("SourceType") & 247);
                }
                location.setExtras(safeBundle.getBundle());
                if (yn(hwLocationResult.getLocation())) {
                    return;
                }
                yn(hwLocationResult);
                return;
            }
            str = "modifySourceType extras is Empty, modifySourceType fail.";
        }
        LogConsole.e("HDLocationCallback", str);
        if (yn(hwLocationResult.getLocation())) {
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
