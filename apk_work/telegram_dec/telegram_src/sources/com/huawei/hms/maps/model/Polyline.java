package com.huawei.hms.maps.model;

import android.os.RemoteException;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.maps.model.internal.IPolylineDelegate;
import com.huawei.hms.maps.utils.LogM;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class Polyline {
    private IPolylineDelegate a;

    public Polyline(IPolylineDelegate iPolylineDelegate) {
        this.a = iPolylineDelegate;
    }

    public boolean equals(Object obj) {
        try {
            if (obj instanceof Polyline) {
                return this.a.equalsRemote(((Polyline) obj).a);
            }
            return false;
        } catch (RemoteException e) {
            LogM.e("Polyline", "equals RemoteException: " + e.toString());
            return false;
        }
    }

    public int getColor() {
        try {
            return this.a.getColor();
        } catch (RemoteException e) {
            LogM.e("Polyline", "getId RemoteException: " + e.toString());
            return 0;
        }
    }

    public Cap getEndCap() {
        try {
            return this.a.getEndCap();
        } catch (RemoteException e) {
            LogM.e("Polyline", "getEndCap RemoteException: " + e.toString());
            return null;
        }
    }

    public String getId() {
        try {
            return this.a.getId();
        } catch (RemoteException e) {
            LogM.e("Polyline", "getId RemoteException: " + e.toString());
            return null;
        }
    }

    public int getJointType() {
        try {
            return this.a.getJointType();
        } catch (RemoteException e) {
            LogM.e("Polyline", "getJointType RemoteException: " + e.toString());
            return -1;
        }
    }

    public List<PatternItem> getPattern() {
        try {
            return this.a.getPattern();
        } catch (RemoteException e) {
            LogM.e("Polyline", "getPattern RemoteException: " + e.toString());
            return null;
        }
    }

    public List<LatLng> getPoints() {
        try {
            return this.a.getPoints();
        } catch (RemoteException e) {
            LogM.e("Polyline", "getPoints RemoteException: " + e.toString());
            return null;
        }
    }

    public Cap getStartCap() {
        try {
            return this.a.getStartCap();
        } catch (RemoteException e) {
            LogM.e("Polyline", "getStartCap RemoteException: " + e.toString());
            return null;
        }
    }

    public Object getTag() {
        try {
            return ObjectWrapper.unwrap(this.a.getTag());
        } catch (RemoteException e) {
            LogM.e("Polyline", "getTag RemoteException: " + e.toString());
            return null;
        }
    }

    public float getWidth() {
        try {
            return this.a.getWidth();
        } catch (RemoteException e) {
            LogM.e("Polyline", "getId RemoteException: " + e.toString());
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public float getZIndex() {
        try {
            return this.a.getZIndex();
        } catch (RemoteException e) {
            LogM.e("Polyline", "getZIndex RemoteException: " + e.toString());
            return -1.0f;
        }
    }

    public int hashCode() {
        try {
            return this.a.hashCodeRemote();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isClickable() {
        try {
            return this.a.isClickable();
        } catch (RemoteException e) {
            LogM.e("Polyline", "isClickable RemoteException: " + e.toString());
            return true;
        }
    }

    public boolean isGeodesic() {
        try {
            return this.a.isGeodesic();
        } catch (RemoteException e) {
            LogM.e("Polyline", "isGeodesic RemoteException: " + e.toString());
            return true;
        }
    }

    public boolean isVisible() {
        try {
            return this.a.isVisible();
        } catch (RemoteException e) {
            LogM.e("Polyline", "isVisible RemoteException: " + e.toString());
            return true;
        }
    }

    public void remove() {
        try {
            this.a.remove();
        } catch (RemoteException e) {
            LogM.e("Polyline", "remove RemoteException: " + e.toString());
        }
    }

    public void setClickable(boolean z) {
        try {
            this.a.setClickable(z);
        } catch (RemoteException e) {
            LogM.e("Polyline", "setClickable RemoteException: " + e.toString());
        }
    }

    public void setColor(int i) {
        try {
            this.a.setColor(i);
        } catch (RemoteException e) {
            LogM.e("Polyline", "setColor RemoteException: " + e.toString());
        }
    }

    public void setEndCap(Cap cap) {
        try {
            this.a.setEndCap(cap);
        } catch (RemoteException e) {
            LogM.e("Polyline", "setEndCap RemoteException: " + e.toString());
        }
    }

    public void setGeodesic(boolean z) {
        try {
            this.a.setGeodesic(z);
        } catch (RemoteException e) {
            LogM.e("Polyline", "setGeodesic RemoteException: " + e.toString());
        }
    }

    public void setJointType(int i) {
        try {
            this.a.setJointType(i);
        } catch (RemoteException e) {
            LogM.e("Polyline", "setJointType RemoteException: " + e.toString());
        }
    }

    public void setPattern(List<PatternItem> list) {
        try {
            this.a.setPattern(list);
        } catch (RemoteException e) {
            LogM.e("Polyline", "setPattern RemoteException: " + e.toString());
        }
    }

    public void setPoints(List<LatLng> list) {
        try {
            this.a.setPoints(list);
        } catch (RemoteException e) {
            LogM.e("Polyline", "setPoints RemoteException: " + e.toString());
        }
    }

    public void setStartCap(Cap cap) {
        try {
            this.a.setStartCap(cap);
        } catch (RemoteException e) {
            LogM.e("Polyline", "setStartCap RemoteException: " + e.toString());
        }
    }

    public void setTag(Object obj) {
        Preconditions.checkNotNull(obj, "you should check tag,it can not be null.");
        try {
            this.a.setTag(ObjectWrapper.wrap(obj));
        } catch (RemoteException e) {
            LogM.e("Polyline", "setTag RemoteException: " + e.toString());
        }
    }

    public void setVisible(boolean z) {
        try {
            this.a.setVisible(z);
        } catch (RemoteException e) {
            LogM.e("Polyline", "setVisible RemoteException: " + e.toString());
        }
    }

    public void setWidth(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Polyline width value is illegal ,this value must be non-negative");
        }
        try {
            this.a.setWidth(f);
        } catch (RemoteException e) {
            LogM.e("Polyline", "setWidth RemoteException: " + e.toString());
        }
    }

    public void setZIndex(float f) {
        try {
            this.a.setZIndex(f);
        } catch (RemoteException e) {
            LogM.e("Polyline", "setZIndex RemoteException: " + e.toString());
        }
    }
}
