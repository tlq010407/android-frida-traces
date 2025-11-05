package com.huawei.hms.maps.model;

import android.content.Context;
import android.os.RemoteException;
import com.huawei.hms.maps.model.HeatMapOptions;
import com.huawei.hms.maps.model.internal.IHeatMapDelegate;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class HeatMap {
    private IHeatMapDelegate a;

    public HeatMap(IHeatMapDelegate iHeatMapDelegate) {
        if (iHeatMapDelegate == null) {
            throw new NullPointerException("Object is null");
        }
        this.a = iHeatMapDelegate;
    }

    private Map<String, String> a(Map<Float, Float> map) {
        HashMap map2 = new HashMap();
        for (Map.Entry<Float, Float> entry : map.entrySet()) {
            map2.put(String.valueOf(entry.getKey()), String.valueOf(entry.getValue()));
        }
        return map2;
    }

    private Map<String, String> b(Map<Float, Integer> map) {
        HashMap map2 = new HashMap();
        for (Map.Entry<Float, Integer> entry : map.entrySet()) {
            map2.put(String.valueOf(entry.getKey()), String.valueOf(entry.getValue()));
        }
        return map2;
    }

    public void changeDataSet(Context context, int i) {
        try {
            this.a.changeDataSetFromRes(i);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void changeDataSet(String str) {
        try {
            this.a.changeDataSet(str);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public String getId() {
        try {
            return this.a.getId();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public HeatMapOptions.RadiusUnit getRadiusUnit() {
        try {
            return this.a.getRadiusUnit() == 2 ? HeatMapOptions.RadiusUnit.METER : HeatMapOptions.RadiusUnit.PIXEL;
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void remove() {
        try {
            this.a.remove();
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void setColor(Map<Float, Integer> map) {
        if (map == null) {
            return;
        }
        try {
            this.a.setColor(b(map));
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void setIntensity(Float f) {
        try {
            this.a.setIntensity(String.valueOf(f));
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void setIntensity(Map<Float, Float> map) {
        if (map == null) {
            return;
        }
        try {
            this.a.setIntensityMap(a(map));
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void setOpacity(Float f) {
        if (f.floatValue() < BitmapDescriptorFactory.HUE_RED || f.floatValue() > 1.0f) {
            throw new IllegalArgumentException("Opacity must be in the range [0..1]");
        }
        try {
            this.a.setOpacity(String.valueOf(f));
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void setOpacity(Map<Float, Float> map) {
        if (map == null) {
            return;
        }
        try {
            this.a.setOpacityMap(a(map));
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void setRadius(Float f) {
        try {
            this.a.setRadius(String.valueOf(f));
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void setRadius(Map<Float, Float> map) {
        if (map == null) {
            return;
        }
        try {
            this.a.setRadiusMap(a(map));
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void setRadiusUnit(HeatMapOptions.RadiusUnit radiusUnit) {
        try {
            this.a.setRadiusUnit(radiusUnit.equals(HeatMapOptions.RadiusUnit.METER) ? 2 : 1);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }

    public void setVisible(boolean z) {
        try {
            this.a.setVisible(z);
        } catch (RemoteException e) {
            throw new com.huawei.hms.feature.dynamic.RuntimeRemoteException(e);
        }
    }
}
