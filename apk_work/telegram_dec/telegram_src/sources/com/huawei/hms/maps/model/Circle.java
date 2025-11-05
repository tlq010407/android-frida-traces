package com.huawei.hms.maps.model;

import android.os.RemoteException;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.maps.model.internal.ICircleDelegate;
import com.huawei.hms.maps.utils.LogM;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class Circle {
    private ICircleDelegate a;

    public Circle(ICircleDelegate iCircleDelegate) {
        this.a = iCircleDelegate;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Circle)) {
            return false;
        }
        try {
            return this.a.equalsRemote(((Circle) obj).a);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public LatLng getCenter() {
        try {
            return this.a.getCenter();
        } catch (RemoteException e) {
            LogM.d("Circle", "getCenter RemoteException: " + e.toString());
            return null;
        }
    }

    public int getFillColor() {
        try {
            return this.a.getFillColor();
        } catch (RemoteException e) {
            LogM.d("Circle", "getFillColor RemoteException: " + e.toString());
            return 0;
        }
    }

    public String getId() {
        try {
            return this.a.getId();
        } catch (RemoteException e) {
            LogM.d("Circle", "getId RemoteException: " + e.toString());
            return null;
        }
    }

    public double getRadius() {
        try {
            return this.a.getRadius();
        } catch (RemoteException e) {
            LogM.d("Circle", "getRadius RemoteException: " + e.toString());
            return 0.0d;
        }
    }

    public int getStrokeColor() {
        try {
            return this.a.getStrokeColor();
        } catch (RemoteException e) {
            LogM.d("Circle", "getStrokeColor RemoteException: " + e.toString());
            return 0;
        }
    }

    public List<PatternItem> getStrokePattern() {
        try {
            return this.a.getStrokePattern();
        } catch (RemoteException e) {
            LogM.e("Circle", "getStrokePattern RemoteException: " + e.toString());
            return null;
        }
    }

    public float getStrokeWidth() {
        try {
            return this.a.getStrokeWidth();
        } catch (RemoteException e) {
            LogM.d("Circle", "getStrokeWidth RemoteException: " + e.toString());
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public Object getTag() {
        try {
            return ObjectWrapper.unwrap(this.a.getTag());
        } catch (RemoteException e) {
            LogM.d("Circle", "RemoteException: " + e.toString());
            return null;
        }
    }

    public float getZIndex() {
        try {
            return this.a.getZIndex();
        } catch (RemoteException e) {
            LogM.e("Circle", "getZIndex RemoteException: " + e.toString());
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
            LogM.d("Circle", "RemoteException: " + e.toString());
            return true;
        }
    }

    public boolean isVisible() {
        try {
            return this.a.isVisible();
        } catch (RemoteException e) {
            LogM.e("Circle", "isVisible RemoteException: " + e.toString());
            return true;
        }
    }

    public void remove() {
        try {
            this.a.remove();
        } catch (RemoteException e) {
            LogM.d("Circle", "remove RemoteException: " + e.toString());
        }
    }

    public void setCenter(LatLng latLng) {
        if (latLng == null) {
            throw new NullPointerException("Circle center cannot be null");
        }
        try {
            this.a.setCenter(latLng);
        } catch (RemoteException e) {
            LogM.d("Circle", "setCenter RemoteException: " + e.toString());
        }
    }

    public void setClickable(boolean z) {
        try {
            this.a.setClickable(z);
        } catch (RemoteException e) {
            LogM.d("Circle", "setClickable RemoteException: " + e.toString());
        }
    }

    public void setFillColor(int i) {
        try {
            this.a.setFillColor(i);
        } catch (RemoteException e) {
            LogM.d("Circle", "setFillColor RemoteException: " + e.toString());
        }
    }

    public void setRadius(double d) {
        try {
            this.a.setRadius(d);
        } catch (RemoteException e) {
            LogM.d("Circle", "setRadius RemoteException: " + e.toString());
        }
    }

    public void setStrokeColor(int i) {
        try {
            this.a.setStrokeColor(i);
        } catch (RemoteException e) {
            LogM.d("Circle", "setStrokeColor RemoteException: " + e.toString());
        }
    }

    public void setStrokePattern(List<PatternItem> list) {
        try {
            this.a.setStrokePattern(list);
        } catch (RemoteException e) {
            LogM.e("Circle", "setStrokePattern RemoteException: " + e.toString());
        }
    }

    public void setStrokeWidth(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Circle strokeWidth value is illegal ,this value must be non-negative");
        }
        try {
            this.a.setStrokeWidth(f);
        } catch (RemoteException e) {
            LogM.d("Circle", "setStrokeWidth RemoteException: " + e.toString());
        }
    }

    public <T> void setTag(T t) {
        try {
            this.a.setTag(ObjectWrapper.wrap(t));
        } catch (RemoteException e) {
            LogM.d("Circle", "RemoteException: " + e.toString());
        }
    }

    public void setVisible(boolean z) {
        try {
            this.a.setVisible(z);
        } catch (RemoteException e) {
            LogM.e("Circle", "setVisible RemoteException: " + e.toString());
        }
    }

    public void setZIndex(float f) {
        try {
            this.a.setZIndex(f);
        } catch (RemoteException e) {
            LogM.e("Circle", "setZIndex RemoteException: " + e.toString());
        }
    }
}
