package com.huawei.hms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.maps.internal.IStreetViewPanoramaDelegate;
import com.huawei.hms.maps.model.LatLng;
import com.huawei.hms.maps.model.StreetViewPanoramaCamera;
import com.huawei.hms.maps.model.StreetViewPanoramaLocation;
import com.huawei.hms.maps.model.StreetViewPanoramaOrientation;
import com.huawei.hms.maps.model.StreetViewSource;
import com.huawei.hms.maps.utils.LogM;

@Deprecated
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class StreetViewPanorama {
    private IStreetViewPanoramaDelegate a;

    public interface OnStreetViewPanoramaCameraChangeListener {
        void onStreetViewPanoramaCameraChange(StreetViewPanoramaCamera streetViewPanoramaCamera);
    }

    public interface OnStreetViewPanoramaChangeListener {
        void onStreetViewPanoramaChange(StreetViewPanoramaLocation streetViewPanoramaLocation);
    }

    public interface OnStreetViewPanoramaClickListener {
        void onStreetViewPanoramaClick(StreetViewPanoramaOrientation streetViewPanoramaOrientation);
    }

    public interface OnStreetViewPanoramaLongClickListener {
        void onStreetViewPanoramaLongClick(StreetViewPanoramaOrientation streetViewPanoramaOrientation);
    }

    StreetViewPanorama(IStreetViewPanoramaDelegate iStreetViewPanoramaDelegate) {
        this.a = iStreetViewPanoramaDelegate;
    }

    public void animateTo(StreetViewPanoramaCamera streetViewPanoramaCamera, long j) {
    }

    public StreetViewPanoramaLocation getLocation() {
        LogM.d("StreetViewPanorama", "getLocation in StreetViewPanorama start");
        try {
            return this.a.getLocation();
        } catch (RemoteException unused) {
            LogM.e("StreetViewPanorama", "RemoteException: ");
            return null;
        }
    }

    public StreetViewPanoramaCamera getPanoramaCamera() {
        try {
            return this.a.getPanoramaCamera();
        } catch (RemoteException e) {
            LogM.e("StreetViewPanorama", "RemoteException: " + e.toString());
            return null;
        }
    }

    public boolean isPanningGesturesEnabled() {
        return false;
    }

    public boolean isStreetNamesEnabled() {
        return false;
    }

    public boolean isUserNavigationEnabled() {
        return false;
    }

    public boolean isZoomGesturesEnabled() {
        return false;
    }

    public Point orientationToPoint(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
        return null;
    }

    public StreetViewPanoramaOrientation pointToOrientation(Point point) {
        try {
            return this.a.pointToOrientation(ObjectWrapper.wrap(point));
        } catch (RemoteException e) {
            LogM.e("StreetViewPanorama", "RemoteException: " + e.toString());
            return null;
        }
    }

    public final void setOnStreetViewPanoramaCameraChangeListener(OnStreetViewPanoramaCameraChangeListener onStreetViewPanoramaCameraChangeListener) {
    }

    public final void setOnStreetViewPanoramaChangeListener(OnStreetViewPanoramaChangeListener onStreetViewPanoramaChangeListener) {
    }

    public final void setOnStreetViewPanoramaClickListener(OnStreetViewPanoramaClickListener onStreetViewPanoramaClickListener) {
    }

    public final void setOnStreetViewPanoramaLongClickListener(OnStreetViewPanoramaLongClickListener onStreetViewPanoramaLongClickListener) {
    }

    public void setPanningGesturesEnabled(boolean z) {
    }

    public void setPosition(LatLng latLng) {
    }

    public void setPosition(LatLng latLng, int i) {
    }

    public void setPosition(LatLng latLng, int i, StreetViewSource streetViewSource) {
    }

    public void setPosition(LatLng latLng, StreetViewSource streetViewSource) {
    }

    public void setPosition(String str) {
    }

    public void setStreetNamesEnabled(boolean z) {
    }

    public void setUserNavigationEnabled(boolean z) {
    }

    public void setZoomGesturesEnabled(boolean z) {
    }
}
