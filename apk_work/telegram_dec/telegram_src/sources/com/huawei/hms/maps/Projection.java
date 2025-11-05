package com.huawei.hms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.huawei.hms.maps.internal.IProjectionDelegate;
import com.huawei.hms.maps.model.LatLng;
import com.huawei.hms.maps.model.VisibleRegion;
import com.huawei.hms.maps.utils.LogM;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class Projection {
    private final IProjectionDelegate a;

    public Projection(IProjectionDelegate iProjectionDelegate) {
        this.a = iProjectionDelegate;
    }

    public LatLng fromScreenLocation(Point point) {
        try {
            return this.a.fromScreenLocation(point);
        } catch (RemoteException e) {
            LogM.e("Projection", "fromScreenLocation: " + e.getMessage());
            return null;
        }
    }

    public VisibleRegion getVisibleRegion() {
        try {
            return this.a.getVisibleRegion();
        } catch (RemoteException e) {
            LogM.e("Projection", "getVisibleRegion: " + e.getMessage());
            return null;
        }
    }

    public Point toScreenLocation(LatLng latLng) {
        try {
            return this.a.toScreenLocation(latLng);
        } catch (RemoteException e) {
            LogM.e("Projection", "toScreenLocation: " + e.getMessage());
            return null;
        }
    }
}
