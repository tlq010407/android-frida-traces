package com.huawei.hms.maps.model;

import android.os.RemoteException;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.maps.model.internal.IGroundOverlayDelegate;
import com.huawei.hms.maps.utils.LogM;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class GroundOverlay {
    private final IGroundOverlayDelegate a;

    public GroundOverlay(IGroundOverlayDelegate iGroundOverlayDelegate) {
        this.a = iGroundOverlayDelegate;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GroundOverlay)) {
            return false;
        }
        try {
            return this.a.equalsRemote(((GroundOverlay) obj).a);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public float getBearing() {
        try {
            return this.a.getBearing();
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "getBearing RemoteException: " + e.toString());
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public LatLngBounds getBounds() {
        try {
            return this.a.getBounds();
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "getBounds RemoteException: " + e.toString());
            return null;
        }
    }

    public float getHeight() {
        try {
            return this.a.getHeight();
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "getHeight RemoteException: " + e.toString());
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public String getId() {
        try {
            return this.a.getId();
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "getId RemoteException: " + e.toString());
            return null;
        }
    }

    public LatLng getPosition() {
        try {
            return this.a.getPosition();
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "getPosition RemoteException: " + e.toString());
            return null;
        }
    }

    public Object getTag() {
        try {
            return ObjectWrapper.unwrap(this.a.getTag());
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "getTag RemoteException: " + e.toString());
            return null;
        }
    }

    public float getTransparency() {
        try {
            return this.a.getTransparency();
        } catch (RemoteException e) {
            LogM.e("GroundOverlay", "getTransparency RemoteException: " + e.toString());
            return -1.0f;
        }
    }

    public float getWidth() {
        try {
            return this.a.getWidth();
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "getWidth RemoteException: " + e.toString());
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public float getZIndex() {
        try {
            return this.a.getZIndex();
        } catch (RemoteException e) {
            LogM.e("GroundOverlay", "getZIndex RemoteException: " + e.toString());
            return -1.0f;
        }
    }

    public int hashCode() {
        try {
            return this.a.hashCodeRemote();
        } catch (RemoteException e) {
            LogM.e("GroundOverlay", "hashCode RemoteException: " + e.toString());
            return 0;
        }
    }

    public boolean isClickable() {
        try {
            return this.a.isClickable();
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "isClickable RemoteException: " + e.toString());
            return false;
        }
    }

    public boolean isVisible() {
        try {
            return this.a.isVisible();
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "isVisible RemoteException: " + e.toString());
            return true;
        }
    }

    public void remove() {
        try {
            IGroundOverlayDelegate iGroundOverlayDelegate = this.a;
            if (iGroundOverlayDelegate != null) {
                iGroundOverlayDelegate.remove();
            }
        } catch (RemoteException e) {
            LogM.e("GroundOverlay", "remove RemoteException: " + e.toString());
        }
    }

    public void setBearing(float f) {
        try {
            this.a.setBearing(f);
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "setBearing RemoteException: " + e.toString());
        }
    }

    public void setClickable(boolean z) {
        try {
            this.a.setClickable(z);
        } catch (RemoteException e) {
            LogM.e("GroundOverlay", "setClickable RemoteException: " + e.toString());
        }
    }

    public void setDimensions(float f) {
        try {
            this.a.setDimension(f);
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "setDimensions RemoteException: " + e.toString());
        }
    }

    public void setDimensions(float f, float f2) {
        try {
            this.a.setDimensions(f, f2);
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "setDimensions RemoteException: " + e.toString());
        }
    }

    public void setImage(BitmapDescriptor bitmapDescriptor) {
        Preconditions.checkNotNull(bitmapDescriptor, "you should check image , it can not be null.");
        try {
            this.a.setImage(bitmapDescriptor.getObject());
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "setImage RemoteException: " + e.toString());
        }
    }

    public void setPosition(LatLng latLng) {
        try {
            this.a.setPosition(latLng);
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "setPosition RemoteException: " + e.toString());
        }
    }

    public void setPositionFromBounds(LatLngBounds latLngBounds) {
        try {
            this.a.setPositionFromBounds(latLngBounds);
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "setPositionFromBounds RemoteException: " + e.toString());
        }
    }

    public void setTag(Object obj) {
        try {
            this.a.setTag(ObjectWrapper.wrap(obj));
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "setTag RemoteException: " + e.toString());
        }
    }

    public void setTransparency(float f) {
        try {
            this.a.setTransparency(f);
        } catch (RemoteException e) {
            LogM.e("GroundOverlay", "setTransparency RemoteException: " + e.toString());
        }
    }

    public void setVisible(boolean z) {
        try {
            this.a.setVisible(z);
        } catch (RemoteException e) {
            LogM.d("GroundOverlay", "setVisible RemoteException: " + e.toString());
        }
    }

    public void setZIndex(float f) {
        try {
            this.a.setZIndex(f);
        } catch (RemoteException e) {
            LogM.e("GroundOverlay", "setZIndex RemoteException: " + e.toString());
        }
    }
}
