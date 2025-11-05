package com.huawei.hms.maps.common.util;

import android.util.Log;
import com.huawei.hms.maps.model.LatLng;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class CoordinateConverter {
    private LatLng a(double d, double d2) {
        if (e(d, d2)) {
            return new LatLng(d2, d);
        }
        double[] dArrB = b(d, d2);
        return new LatLng(d2 + dArrB[1], d + dArrB[0]);
    }

    private double[] b(double d, double d2) {
        double d3 = d - 105.0d;
        double d4 = d2 - 35.0d;
        double dC = c(d3, d4);
        double d5 = d(d3, d4);
        double d6 = (d2 / 180.0d) * 3.141592653589793d;
        double dSin = Math.sin(d6);
        double d7 = 1.0d - ((0.006693421622965943d * dSin) * dSin);
        double dSqrt = Math.sqrt(d7);
        return new double[]{(dC * 180.0d) / (((6378245.0d / dSqrt) * Math.cos(d6)) * 3.141592653589793d), (d5 * 180.0d) / ((6335552.717000426d / (d7 * dSqrt)) * 3.141592653589793d)};
    }

    private double c(double d, double d2) {
        double d3 = d * 0.1d;
        return d + 300.0d + (d2 * 2.0d) + (d3 * d) + (d3 * d2) + (Math.sqrt(Math.abs(d)) * 0.1d) + ((((Math.sin((6.0d * d) * 3.141592653589793d) * 20.0d) + (Math.sin((d * 2.0d) * 3.141592653589793d) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(d * 3.141592653589793d) * 20.0d) + (Math.sin((d / 3.0d) * 3.141592653589793d) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d / 12.0d) * 3.141592653589793d) * 150.0d) + (Math.sin((d / 30.0d) * 3.141592653589793d) * 300.0d)) * 2.0d) / 3.0d);
    }

    private double d(double d, double d2) {
        double d3 = d * 2.0d;
        double dSqrt = (-100.0d) + d3 + (d2 * 3.0d) + (d2 * 0.2d * d2) + (0.1d * d * d2) + (Math.sqrt(Math.abs(d)) * 0.2d) + ((((Math.sin((6.0d * d) * 3.141592653589793d) * 20.0d) + (Math.sin(d3 * 3.141592653589793d) * 20.0d)) * 2.0d) / 3.0d);
        double d4 = d2 * 3.141592653589793d;
        return dSqrt + ((((Math.sin(d4) * 20.0d) + (Math.sin((d2 / 3.0d) * 3.141592653589793d) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d2 / 12.0d) * 3.141592653589793d) * 160.0d) + (Math.sin(d4 / 30.0d) * 320.0d)) * 2.0d) / 3.0d);
    }

    private boolean e(double d, double d2) {
        return d < 72.004d || d > 137.8347d || d2 < 0.8293d || d2 > 55.8271d;
    }

    public LatLng convert(LatLng latLng) {
        if (latLng != null) {
            return a(latLng.longitude, latLng.latitude);
        }
        Log.e("CoordinateConverter", "LatLng is null.");
        return null;
    }

    public LatLng[] convert(LatLng[] latLngArr) {
        String str;
        if (latLngArr == null) {
            str = "LatLng is null.";
        } else {
            if (latLngArr.length <= 512) {
                for (int i = 0; i < latLngArr.length; i++) {
                    LatLng latLng = latLngArr[i];
                    latLngArr[i] = a(latLng.longitude, latLng.latitude);
                }
                return latLngArr;
            }
            str = "The points of convert cannot exceed 512 points.";
        }
        Log.e("CoordinateConverter", str);
        return null;
    }
}
