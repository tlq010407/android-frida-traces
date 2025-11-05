package com.huawei.location.tiles.utils;

import com.huawei.location.lite.common.log.LogConsole;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class zp {
    private Long Vw;
    private d2 yn;

    public zp(Long l, d2 d2Var) {
        this.Vw = l;
        this.yn = d2Var;
    }

    public Long[] yn() {
        double[] dArr;
        d2 d2VarYn = E5.yn(this.Vw.longValue());
        d2 d2Var = this.yn;
        double d = d2VarYn.Vw;
        double d2 = d2Var.Vw;
        double radians = Math.toRadians(d2VarYn.yn);
        double radians2 = Math.toRadians(d2Var.yn);
        double radians3 = Math.toRadians(d2 - d);
        double degrees = (Math.toDegrees(Math.atan2(Math.sin(radians3) * Math.cos(radians2), (Math.cos(radians) * Math.sin(radians2)) - ((Math.sin(radians) * Math.cos(radians2)) * Math.cos(radians3)))) + 360.0d) % 360.0d;
        if (degrees < 0.0d || degrees > 360.0d) {
            LogConsole.i("TileIdPrediction", "illegal degree, return null");
            dArr = new double[0];
        } else {
            dArr = (0.0d > degrees || degrees >= 90.0d) ? (90.0d > degrees || degrees >= 180.0d) ? (180.0d > degrees || degrees >= 270.0d) ? new double[]{270.0d, 315.0d, 360.0d} : new double[]{180.0d, 225.0d, 270.0d} : new double[]{90.0d, 135.0d, 180.0d} : new double[]{0.0d, 45.0d, 90.0d};
        }
        int length = dArr.length;
        d2[] d2VarArr = new d2[length];
        int i = 0;
        while (i < dArr.length) {
            double d3 = d2VarYn.Vw;
            double d4 = d2VarYn.yn;
            double d5 = 500;
            double radians4 = Math.toRadians(dArr[i]);
            double dSin = Math.sin(radians4);
            double dCos = Math.cos(radians4);
            double dTan = Math.tan(Math.toRadians(d4)) * 0.996647189336d;
            double dSqrt = 1.0d / Math.sqrt((dTan * dTan) + 1.0d);
            double d6 = dTan * dSqrt;
            double dAtan2 = Math.atan2(dTan, dCos);
            double d7 = dSqrt * dSin;
            double d8 = d7 * d7;
            double d9 = 1.0d - d8;
            double d10 = (2.723316066819453E11d * d9) / 4.0408299984087055E13d;
            double d11 = (d10 / 1024.0d) * ((d10 * (((74.0d - (47.0d * d10)) * d10) - 128.0d)) + 256.0d);
            Double.isNaN(d5);
            double d12 = d5 / ((((d10 / 16384.0d) * (((((320.0d - (175.0d * d10)) * d10) - 768.0d) * d10) + 4096.0d)) + 1.0d) * 6356752.3142d);
            double d13 = 6.283185307179586d;
            double dCos2 = 0.0d;
            double dSin2 = 0.0d;
            double dCos3 = 0.0d;
            double d14 = d12;
            while (Math.abs(d14 - d13) > 1.0E-12d) {
                dCos3 = Math.cos((dAtan2 * 2.0d) + d14);
                dSin2 = Math.sin(d14);
                dCos2 = Math.cos(d14);
                double d15 = d14;
                d14 = d12 + (d11 * dSin2 * (dCos3 + ((d11 / 4.0d) * (((((2.0d * dCos3) * dCos3) - 1.0d) * dCos2) - ((((d11 / 6.0d) * dCos3) * (((dSin2 * 4.0d) * dSin2) - 3.0d)) * (((4.0d * dCos3) * dCos3) - 3.0d))))));
                d13 = d15;
            }
            double d16 = d6 * dSin2;
            double d17 = dSqrt * dCos2;
            double d18 = d16 - (d17 * dCos);
            double[] dArr2 = dArr;
            double dAtan22 = Math.atan2((d6 * dCos2) + (dSqrt * dSin2 * dCos), Math.sqrt(d8 + (d18 * d18)) * 0.996647189336d);
            double dAtan23 = Math.atan2(dSin2 * dSin, d17 - (d16 * dCos));
            double d19 = 2.095506665E-4d * d9 * (((4.0d - (d9 * 3.0d)) * 0.003352810664d) + 4.0d);
            d2VarArr[i] = new d2(Math.toDegrees(dAtan22), d3 + Math.toDegrees(dAtan23 - ((((1.0d - d19) * 0.003352810664d) * d7) * (d14 + ((dSin2 * d19) * (dCos3 + ((d19 * dCos2) * (((2.0d * dCos3) * dCos3) - 1.0d))))))));
            i++;
            d2VarYn = d2VarYn;
            dArr = dArr2;
            length = length;
        }
        int i2 = length;
        Long[] lArr = new Long[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            d2 d2Var2 = d2VarArr[i3];
            lArr[i3] = Long.valueOf(com.huawei.location.FB.yn(d2Var2.Vw, d2Var2.yn, 15));
        }
        return lArr;
    }
}
