package com.huawei.hms.maps;

import android.os.RemoteException;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.maps.internal.IUiSettingsDelegate;
import com.huawei.hms.maps.model.BitmapDescriptor;
import com.huawei.hms.maps.utils.LogM;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class UiSettings {
    private final IUiSettingsDelegate a;

    public UiSettings(IUiSettingsDelegate iUiSettingsDelegate) {
        LogM.d("UISettings", "UISettings: ");
        this.a = iUiSettingsDelegate;
    }

    public boolean isCompassEnabled() {
        try {
            return this.a.isCompassEnabled();
        } catch (RemoteException e) {
            LogM.d("UISettings", "isCompassEnabled RemoteException: " + e.toString());
            return false;
        }
    }

    public boolean isIndoorLevelPickerEnabled() {
        try {
            return this.a.isIndoorLevelPickerEnabled();
        } catch (RemoteException e) {
            LogM.d("UISettings", "isIndoorLevelPickerEnabled RemoteException: " + e.toString());
            return false;
        }
    }

    public boolean isMapToolbarEnabled() {
        try {
            return this.a.isMapToolbarEnabled();
        } catch (RemoteException e) {
            LogM.d("UISettings", "isMapToolbarEnabled RemoteException: " + e.toString());
            return false;
        }
    }

    public boolean isMyLocationButtonEnabled() {
        try {
            return this.a.isMyLocationButtonEnabled();
        } catch (RemoteException e) {
            LogM.d("UISettings", "isMyLocationButtonEnabled RemoteException: " + e.toString());
            return false;
        }
    }

    public boolean isRotateGesturesEnabled() {
        try {
            return this.a.isRotateGesturesEnabled();
        } catch (RemoteException e) {
            LogM.d("UISettings", "isRotateGesturesEnabled RemoteException: " + e.toString());
            return false;
        }
    }

    public boolean isScrollGesturesEnabled() {
        try {
            return this.a.isScrollGesturesEnabled();
        } catch (RemoteException e) {
            LogM.d("UISettings", "isScrollGesturesEnabled RemoteException: " + e.toString());
            return false;
        }
    }

    public boolean isScrollGesturesEnabledDuringRotateOrZoom() {
        try {
            return this.a.isScrollGesturesEnabledDuringRotateOrZoom();
        } catch (RemoteException e) {
            LogM.e("UISettings", "isScrollGesturesEnabledDuringRotateOrZoom RemoteException: " + e.toString());
            return false;
        }
    }

    public boolean isTiltGesturesEnabled() {
        try {
            return this.a.isTiltGesturesEnabled();
        } catch (RemoteException e) {
            LogM.d("UISettings", "isTiltGesturesEnabled RemoteException: " + e.toString());
            return false;
        }
    }

    public boolean isZoomControlsEnabled() {
        try {
            return this.a.isZoomControlsEnabled();
        } catch (RemoteException e) {
            LogM.d("UISettings", "isZoomControlsEnabled RemoteException: " + e.toString());
            return false;
        }
    }

    public boolean isZoomGesturesEnabled() {
        try {
            return this.a.isZoomGesturesEnabled();
        } catch (RemoteException e) {
            LogM.d("UISettings", "isZoomGesturesEnabled RemoteException: " + e.toString());
            return false;
        }
    }

    public void setAllGesturesEnabled(boolean z) {
        try {
            this.a.setAllGesturesEnabled(z);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setAllGesturesEnabled RemoteException: " + e.toString());
        }
    }

    public void setCompassEnabled(boolean z) {
        try {
            this.a.setCompassEnabled(z);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setCompassEnabled RemoteException: " + e.toString());
        }
    }

    public void setGestureScaleByMapCenter(boolean z) {
        try {
            this.a.setGestureScaleByMapCenter(z);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setGestureScaleByMapCenter RemoteException: " + e.toString());
        }
    }

    public void setIndoorLevelPickerEnabled(boolean z) {
        try {
            this.a.setIndoorLevelPickerEnabled(z);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setIndoorLevelPickerEnabled RemoteException: " + e.toString());
        }
    }

    public void setLogoPadding(int i, int i2, int i3, int i4) {
        try {
            this.a.setLogoPadding(i, i2, i3, i4);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setLogoPadding RemoteException: " + e.toString());
        }
    }

    public void setLogoPosition(int i) {
        if (i == 8388691 || i == 8388693 || i == 8388659 || i == 8388661) {
            try {
                this.a.setLogoPosition(i);
            } catch (RemoteException e) {
                LogM.d("UISettings", "setLogoPosition RemoteException: " + e.toString());
            }
        }
    }

    public void setMapToolbarEnabled(boolean z) {
        try {
            this.a.setMapToolbarEnabled(z);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setMyLocationButtonEnabled RemoteException: " + e.toString());
        }
    }

    public void setMarkerClusterColor(int i) {
        try {
            this.a.setMarkerClusterColor(i);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setMarkerClusterColor RemoteException: " + e.toString());
        }
    }

    public void setMarkerClusterIcon(BitmapDescriptor bitmapDescriptor) {
        try {
            if (bitmapDescriptor == null) {
                this.a.setMarkerClusterIcon(ObjectWrapper.wrap(null));
            } else {
                this.a.setMarkerClusterIcon(bitmapDescriptor.getObject());
            }
        } catch (RemoteException e) {
            LogM.d("UISettings", "setMarkerClusterIcon RemoteException: " + e.toString());
        }
    }

    public void setMarkerClusterTextColor(int i) {
        try {
            this.a.setMarkerClusterTextColor(i);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setMarkerClusterColor RemoteException: " + e.toString());
        }
    }

    public void setMyLocationButtonEnabled(boolean z) {
        try {
            this.a.setMyLocationButtonEnabled(z);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setMyLocationButtonEnabled RemoteException: " + e.toString());
        }
    }

    public void setRotateGesturesEnabled(boolean z) {
        try {
            this.a.setRotateGesturesEnabled(z);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setRotateGesturesEnabled RemoteException: " + e.toString());
        }
    }

    public void setScrollGesturesEnabled(boolean z) {
        try {
            this.a.setScrollGesturesEnabled(z);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setScrollGesturesEnabled RemoteException: " + e.toString());
        }
    }

    public void setScrollGesturesEnabledDuringRotateOrZoom(boolean z) {
        try {
            this.a.setScrollGesturesEnabledDuringRotateOrZoom(z);
        } catch (RemoteException e) {
            LogM.e("UISettings", "setScrollGesturesEnabledDuringRotateOrZoom RemoteException: " + e.toString());
        }
    }

    public void setTiltGesturesEnabled(boolean z) {
        try {
            this.a.setTiltGesturesEnabled(z);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setTiltGesturesEnabled RemoteException: " + e.toString());
        }
    }

    public void setZoomControlsEnabled(boolean z) {
        try {
            this.a.setZoomControlsEnabled(z);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setZoomControlsEnabled RemoteException: " + e.toString());
        }
    }

    public void setZoomGesturesEnabled(boolean z) {
        try {
            this.a.setZoomGesturesEnabled(z);
        } catch (RemoteException e) {
            LogM.d("UISettings", "setZoomGesturesEnabled RemoteException: " + e.toString());
        }
    }
}
