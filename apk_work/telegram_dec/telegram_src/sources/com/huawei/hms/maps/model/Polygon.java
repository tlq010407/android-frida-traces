package com.huawei.hms.maps.model;

import android.os.RemoteException;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.maps.model.internal.IPolygonDelegate;
import com.huawei.hms.maps.utils.LogM;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class Polygon {
    private IPolygonDelegate a;

    public Polygon(IPolygonDelegate iPolygonDelegate) {
        LogM.d("Polygon", "Polygon: ");
        this.a = iPolygonDelegate;
    }

    public boolean equals(Object obj) {
        try {
            if (obj instanceof Polygon) {
                return this.a.equalsRemote(((Polygon) obj).a);
            }
            return false;
        } catch (RemoteException e) {
            LogM.d("Polygon", "equals RemoteException: " + e.toString());
            return false;
        }
    }

    public int getFillColor() {
        try {
            return this.a.getFillColor();
        } catch (RemoteException e) {
            LogM.d("Polygon", "getFillColor RemoteException: " + e.toString());
            return 0;
        }
    }

    public List<List<LatLng>> getHoles() {
        try {
            return this.a.getHoles();
        } catch (RemoteException e) {
            LogM.e("Polygon", "getHoles RemoteException: " + e.toString());
            return null;
        }
    }

    public String getId() {
        try {
            return this.a.getId();
        } catch (RemoteException e) {
            LogM.d("Polygon", "getId RemoteException: " + e.toString());
            return null;
        }
    }

    public List<LatLng> getPoints() {
        try {
            return this.a.getPoints();
        } catch (RemoteException e) {
            LogM.d("Polygon", "getPoints RemoteException: " + e.toString());
            return null;
        }
    }

    public int getStrokeColor() {
        try {
            return this.a.getStrokeColor();
        } catch (RemoteException e) {
            LogM.d("Polygon", "getStrokeColor RemoteException: " + e.toString());
            return 0;
        }
    }

    public int getStrokeJointType() {
        try {
            return this.a.getStrokeJointType();
        } catch (RemoteException e) {
            LogM.d("Polygon", "getStrokeJointType RemoteException: " + e.toString());
            return 0;
        }
    }

    public List<PatternItem> getStrokePattern() {
        try {
            return this.a.getStrokePattern();
        } catch (RemoteException e) {
            LogM.e("Polygon", "getStrokePattern RemoteException: " + e.toString());
            return null;
        }
    }

    public float getStrokeWidth() {
        try {
            return this.a.getStrokeWidth();
        } catch (RemoteException e) {
            LogM.d("Polygon", "getStrokeWidth RemoteException: " + e.toString());
            return -1.0f;
        }
    }

    public Object getTag() {
        try {
            return ObjectWrapper.unwrap(this.a.getTag());
        } catch (RemoteException e) {
            LogM.d("Polygon", "getTag RemoteException: " + e.toString());
            return null;
        }
    }

    public float getZIndex() {
        try {
            return this.a.getZIndex();
        } catch (RemoteException e) {
            LogM.e("Polygon", "getZIndex RemoteException: " + e.toString());
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
            LogM.d("Polygon", "isClickable RemoteException: " + e.toString());
            return true;
        }
    }

    public boolean isGeodesic() {
        try {
            return this.a.isGeodesic();
        } catch (RemoteException e) {
            LogM.e("Polygon", "isGeodesic RemoteException: " + e.toString());
            return true;
        }
    }

    public boolean isVisible() {
        try {
            return this.a.isVisible();
        } catch (RemoteException e) {
            LogM.e("Polygon", "isVisible RemoteException: " + e.toString());
            return true;
        }
    }

    public void remove() {
        try {
            this.a.remove();
        } catch (RemoteException e) {
            LogM.d("Polygon", "remove RemoteException: " + e.toString());
        }
    }

    public void setClickable(boolean z) {
        try {
            this.a.setClickable(z);
        } catch (RemoteException e) {
            LogM.d("Polygon", "setClickable RemoteException: " + e.toString());
        }
    }

    public void setFillColor(int i) {
        try {
            this.a.setFillColor(i);
        } catch (RemoteException e) {
            LogM.d("Polygon", "setFillColor RemoteException: " + e.toString());
        }
    }

    public void setGeodesic(boolean z) {
        try {
            this.a.setGeodesic(z);
        } catch (RemoteException e) {
            LogM.e("Polygon", "setGeodesic RemoteException: " + e.toString());
        }
    }

    public void setHoles(List<? extends List<LatLng>> list) {
        try {
            this.a.setHoles(list);
        } catch (RemoteException e) {
            LogM.e("Polygon", "setHoles RemoteException: " + e.toString());
        }
    }

    public void setPoints(List<LatLng> list) {
        try {
            this.a.setPoints(list);
        } catch (RemoteException e) {
            LogM.d("Polygon", "setPoints RemoteException: " + e.toString());
        }
    }

    public void setStrokeColor(int i) {
        try {
            this.a.setStrokeColor(i);
        } catch (RemoteException e) {
            LogM.d("Polygon", "setStrokeColor RemoteException: " + e.toString());
        }
    }

    public void setStrokeJointType(int i) {
        try {
            this.a.setStrokeJointType(i);
        } catch (RemoteException e) {
            LogM.e("Polygon", "setStrokeJointType RemoteException: " + e.toString());
        }
    }

    public void setStrokePattern(List<PatternItem> list) {
        try {
            this.a.setStrokePattern(list);
        } catch (RemoteException e) {
            LogM.e("Polygon", "setStrokePattern RemoteException: " + e.toString());
        }
    }

    public void setStrokeWidth(float f) {
        try {
            this.a.setStrokeWidth(f);
        } catch (RemoteException e) {
            LogM.d("Polygon", "setStrokeWidth RemoteException: " + e.toString());
        }
    }

    public void setTag(Object obj) {
        try {
            this.a.setTag(ObjectWrapper.wrap(obj));
        } catch (RemoteException e) {
            LogM.d("Polygon", "setTag RemoteException: " + e.toString());
        }
    }

    public void setVisible(boolean z) {
        try {
            this.a.setVisible(z);
        } catch (RemoteException e) {
            LogM.e("Polygon", "setVisible RemoteException: " + e.toString());
        }
    }

    public void setZIndex(float f) {
        try {
            this.a.setZIndex(f);
        } catch (RemoteException e) {
            LogM.e("Polygon", "setZIndex RemoteException: " + e.toString());
        }
    }
}
