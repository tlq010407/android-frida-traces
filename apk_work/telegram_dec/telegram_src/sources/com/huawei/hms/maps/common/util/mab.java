package com.huawei.hms.maps.common.util;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import com.huawei.hms.adapter.AvailableAdapter;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.maps.MapClientIdentify;
import com.huawei.hms.maps.internal.HmsUtil;
import com.huawei.hms.maps.internal.ICreator;
import com.huawei.hms.maps.internal.IDistanceCalculatorDelegate;
import com.huawei.hms.maps.internal.mac;
import com.huawei.hms.maps.model.LatLng;
import com.huawei.hms.maps.model.RuntimeRemoteException;
import com.huawei.hms.maps.utils.LogM;
import com.huawei.hms.maps.utils.MapsAdvUtil;
import java.lang.reflect.InvocationTargetException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class mab {
    private static IDistanceCalculatorDelegate a;

    protected static double a(LatLng latLng, LatLng latLng2) throws NumberFormatException {
        if (latLng == null || latLng2 == null) {
            return 0.0d;
        }
        try {
            if (MapsAdvUtil.containsMapsBasic()) {
                LogM.d("MapUtil", "computeDistanceBetween from basic.");
                if (a == null) {
                    a = new com.huawei.hms.maps.provider.inhuawei.IDistanceCalculatorDelegate();
                }
                return a.computeDistanceBetween(latLng, latLng2);
            }
            if (a == null) {
                a();
            }
            IDistanceCalculatorDelegate iDistanceCalculatorDelegate = a;
            if (iDistanceCalculatorDelegate != null) {
                return iDistanceCalculatorDelegate.computeDistanceBetween(latLng, latLng2);
            }
            return 0.0d;
        } catch (RemoteException e) {
            LogM.d("MapUtil", "RemoteException: " + e.toString());
            return 0.0d;
        }
    }

    protected static int a(Context context) {
        StringBuilder sb;
        int i;
        if (c(context) && !b()) {
            sb = new StringBuilder();
            sb.append("isHmsMapAvailable is ");
            i = 2;
        } else if (b(context) != 0) {
            sb = new StringBuilder();
            sb.append("isHmsMapAvailable is ");
            i = 1;
        } else {
            sb = new StringBuilder();
            sb.append("isHmsMapAvailable is ");
            i = 0;
        }
        sb.append(i);
        LogM.d("MapUtil", sb.toString());
        return i;
    }

    private static String a(String str, String str2) throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            Object objInvoke = cls.getDeclaredMethod("get", String.class, String.class).invoke(cls, str, str2);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException unused) {
            LogM.e("MapUtil", "An exception occurred while reading SystemProperties: " + str);
        }
        return str2;
    }

    private static void a() throws NumberFormatException {
        StringBuilder sb;
        String str;
        try {
            Application application = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            MapClientIdentify mapClientIdentify = new MapClientIdentify();
            int iIsHmsAvailable = HmsUtil.isHmsAvailable(application);
            if (iIsHmsAvailable != 0) {
                LogM.e("MapUtil", "hmsState check failed: " + iIsHmsAvailable);
            }
            ICreator iCreatorB = mac.b(application);
            mapClientIdentify.regestIdentity(application, iCreatorB);
            if (iCreatorB == null) {
                LogM.d("MapUtil", "creator is null");
            } else {
                a = iCreatorB.newDistanceCalculatorDelegate(ObjectWrapper.wrap(mac.d(application)));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        } catch (ClassNotFoundException e2) {
            e = e2;
            sb = new StringBuilder();
            str = "ClassNotFoundException: ";
            sb.append(str);
            sb.append(e.toString());
            LogM.e("MapUtil", sb.toString());
        } catch (IllegalAccessException e3) {
            e = e3;
            sb = new StringBuilder();
            str = "IllegalAccessException: ";
            sb.append(str);
            sb.append(e.toString());
            LogM.e("MapUtil", sb.toString());
        } catch (NoSuchMethodException e4) {
            e = e4;
            sb = new StringBuilder();
            str = "NoSuchMethodException: ";
            sb.append(str);
            sb.append(e.toString());
            LogM.e("MapUtil", sb.toString());
        } catch (InvocationTargetException e5) {
            e = e5;
            sb = new StringBuilder();
            str = "InvocationTargetException: ";
            sb.append(str);
            sb.append(e.toString());
            LogM.e("MapUtil", sb.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int b(Context context) throws NumberFormatException {
        String string;
        int i;
        try {
            string = context.getPackageManager().getApplicationInfo(context.getApplicationContext().getPackageName(), 128).metaData.getString("com.huawei.hms.map.version");
        } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            LogM.e("MapUtil", "NameNotFoundException ");
            string = null;
        }
        if (string == null || "".equals(string)) {
            i = 40001300;
        } else {
            String[] strArrSplit = string.split("\\.");
            if (strArrSplit.length == 4) {
                StringBuilder sb = new StringBuilder();
                sb.append(strArrSplit[0]);
                sb.append("0");
                sb.append(strArrSplit[1]);
                sb.append("0");
                sb.append(strArrSplit[2]);
                sb.append(strArrSplit[3]);
                LogM.d("MapUtil", "hmsVersionStr " + string);
                i = Integer.parseInt(sb.toString());
            }
        }
        return new AvailableAdapter(i).isHuaweiMobileServicesAvailable(context);
    }

    private static boolean b() throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        StringBuilder sb;
        int length;
        if (!a("ro.build.version.magic", "").equals("") || !a("ro.build.version.emui", "").contains("EmotionUI_10")) {
            return true;
        }
        String strA = a("ro.huawei.build.display.id", "");
        LogM.d("MapUtil", "huaweiSubVersion is " + strA);
        if ("".equals(strA)) {
            strA = a("ro.build.display.id", "");
            LogM.d("MapUtil", "emuiSubVersion is " + strA);
        }
        String[] strArrSplit = strA.split(" ");
        boolean z = false;
        if (1 < strArrSplit.length) {
            String[] strArrSplit2 = strArrSplit[1].split("\\.");
            if (3 < strArrSplit2.length) {
                String strSubstring = strArrSplit2[3];
                int iIndexOf = strSubstring.indexOf("(");
                if (-1 != iIndexOf) {
                    strSubstring = strSubstring.substring(0, iIndexOf);
                }
                try {
                    int i = Integer.parseInt(strArrSplit2[0]);
                    int i2 = Integer.parseInt(strArrSplit2[1]);
                    int i3 = Integer.parseInt(strArrSplit2[2]);
                    int i4 = Integer.parseInt(strSubstring);
                    if (i < 10 || (i == 10 && i2 == 0 && i3 < 1 && i4 < 122)) {
                        z = true;
                    }
                    return true ^ z;
                } catch (NumberFormatException e) {
                    LogM.e("MapUtil", "NumberFormatException" + e.toString());
                    return true;
                }
            }
            sb = new StringBuilder();
            sb.append("versionStrs.length <= 3: ");
            length = strArrSplit2.length;
        } else {
            sb = new StringBuilder();
            sb.append("versions.length <= 1: ");
            length = strArrSplit.length;
        }
        sb.append(length);
        LogM.e("MapUtil", sb.toString());
        return false;
    }

    private static boolean c(Context context) {
        return "cn".equalsIgnoreCase(a("ro.product.locale.region", "")) || "cn".equalsIgnoreCase(a("ro.hw.country", "")) || "cn".equalsIgnoreCase(a("msc.sys.country", ""));
    }
}
