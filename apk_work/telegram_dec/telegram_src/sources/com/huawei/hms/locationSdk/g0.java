package com.huawei.hms.locationSdk;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.huawei.hms.location.LocationResult;
import com.huawei.location.lite.common.log.logwrite.DateUtil;
import com.huawei.location.lite.common.util.APKUtil;
import com.huawei.secure.android.common.intent.SafeBundle;
import java.util.Calendar;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class g0 {
    private static String a() {
        return DateUtil.formate(Calendar.getInstance().getTime(), "yy-MM-dd HH:mm:ss.SSS");
    }

    public static String a(Context context) {
        StringBuilder sb = new StringBuilder();
        String packageName = context.getPackageName();
        String strValueOf = String.valueOf(APKUtil.getThirdAppVersionCode(context.getPackageName()));
        String strValueOf2 = String.valueOf(60400300);
        String strValueOf3 = String.valueOf(APKUtil.getThirdAppVersionCode("com.huawei.hwid"));
        sb.append(packageName);
        sb.append(":");
        sb.append(strValueOf);
        sb.append(",");
        sb.append("locationSdkVersion");
        sb.append(":");
        sb.append(strValueOf2);
        sb.append(",");
        sb.append("com.huawei.hwid");
        sb.append(":");
        sb.append(strValueOf3);
        return sb.toString();
    }

    public static String a(String str, LocationResult locationResult) {
        StringBuilder sb = new StringBuilder();
        sb.append("\t");
        sb.append(a());
        sb.append(",");
        sb.append(str);
        sb.append(",");
        Location location = locationResult.getLocations().get(0);
        if (location != null) {
            sb.append(location.getProvider());
            sb.append(",");
            sb.append("\t");
            sb.append(location.getLatitude());
            sb.append(",");
            sb.append("\t");
            sb.append(location.getLongitude());
            sb.append(",");
            sb.append(location.getAccuracy());
            sb.append(",");
            sb.append("\t");
            sb.append(location.getTime());
            sb.append(",");
            sb.append(location.getSpeed());
            sb.append(",");
            Bundle extras = location.getExtras();
            SafeBundle safeBundle = new SafeBundle(extras);
            if (extras != null) {
                sb.append(safeBundle.getString("session_id"));
                sb.append(",");
                int i = safeBundle.getInt("SourceType", Integer.MIN_VALUE);
                if (i == Integer.MIN_VALUE) {
                    sb.append("null");
                } else {
                    sb.append(i);
                }
                sb.append(",");
                sb.append(safeBundle.getString("locateType"));
                sb.append(",");
                sb.append(safeBundle.getInt("vendorType"));
                sb.append(",");
                sb.append(safeBundle.getString("src"));
                sb.append(",");
                sb.append(safeBundle.getInt("switchHd"));
                sb.append(",");
                sb.append(safeBundle.getInt("floor"));
                sb.append(",");
                sb.append(safeBundle.getInt("floorAcc"));
                sb.append(",");
                sb.append(safeBundle.getString("buildingId"));
            }
        }
        return sb.toString();
    }

    public static boolean b() {
        return false;
    }
}
