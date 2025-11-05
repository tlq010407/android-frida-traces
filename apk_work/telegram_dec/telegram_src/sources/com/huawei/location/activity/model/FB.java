package com.huawei.location.activity.model;

import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.location.lite.common.log.LogConsole;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class FB implements Cloneable {
    private float FB;
    private float LW;
    private float Vw;
    private long yn;

    public FB(float f, float f2, float f3) {
        this.Vw = f;
        this.FB = f2;
        this.LW = f3;
    }

    public float FB() {
        return this.FB;
    }

    public void FB(float f) {
        this.LW = f;
    }

    public float LW() {
        return this.LW;
    }

    public float Vw() {
        return this.Vw;
    }

    public void Vw(float f) {
        this.FB = f;
    }

    public Object clone() {
        FB fb = new FB(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        try {
            return super.clone() instanceof FB ? (FB) super.clone() : fb;
        } catch (CloneNotSupportedException unused) {
            LogConsole.e("SensorRecord", "Clone Not Supported Exception");
            return fb;
        }
    }

    public String toString() {
        return "time: " + this.yn + " x:" + this.Vw + " y:" + this.FB + " z:" + this.LW;
    }

    public long yn() {
        return this.yn;
    }

    public void yn(float f) {
        this.Vw = f;
    }

    public void yn(long j) {
        this.yn = j;
    }
}
