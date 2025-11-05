package com.huawei.hms.maps;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.RemoteException;
import android.text.TextUtils;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.maps.internal.ICreator;
import com.huawei.hms.maps.internal.IMapClientIdentity;
import com.huawei.hms.maps.utils.LogM;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class MapClientIdentify {
    private static Context a;
    private static String b;
    private static String c;
    private static Boolean d = Boolean.FALSE;
    private static long e = 0;
    private IMapClientIdentity f;

    private static String a(byte[] bArr) {
        try {
            return b(MessageDigest.getInstance("SHA-256").digest(bArr));
        } catch (NoSuchAlgorithmException unused) {
            LogM.e("MapClientIdentify", "NoSuchAlgorithmException");
            return "";
        }
    }

    private static String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < length; i++) {
            byte b2 = bArr[i];
            stringBuffer.append((b2 & 255) < 16 ? "0" + Integer.toHexString(bArr[i] & 255) : Integer.toHexString(b2 & 255));
        }
        return stringBuffer.toString().toUpperCase(Locale.ENGLISH);
    }

    public static String getApiKey() {
        return b;
    }

    public static Context getAppContext() {
        return a;
    }

    public static String getAppId() {
        return c;
    }

    public static byte[] getInstalledAPPSignature(Context context, String str) {
        PackageInfo packageInfo;
        if (context == null || TextUtils.isEmpty(str)) {
            LogM.e("HiPkgSignManager", "packageName is null or context is null");
            return new byte[0];
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(str, 64)) != null) {
                return packageInfo.signatures[0].toByteArray();
            }
        } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            LogM.e("HiPkgSignManager", "PackageManager.NameNotFoundException : ");
        }
        return new byte[0];
    }

    public static String getInstalledAppHash(Context context, String str) {
        byte[] installedAPPSignature = getInstalledAPPSignature(context, str);
        return (installedAPPSignature == null || installedAPPSignature.length <= 0) ? "" : a(installedAPPSignature);
    }

    public static long getMapAuthStartTime() {
        return e;
    }

    public static String getPackageCode(Context context) {
        int i;
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM).versionCode;
        } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            LogM.e("MapClientIdentify", "getPackageCode failed NameNotFoundException ");
            i = 0;
        }
        LogM.d("MapClientIdentify", "code = " + i);
        return String.valueOf(i);
    }

    public static Boolean isSupportChina() {
        return d;
    }

    public static void setApiKey(String str) {
        b = str;
    }

    public static void setAppContext(Context context) {
        a = context;
    }

    public static void setAppId(String str) {
        c = str;
    }

    public static void setMapAuthStartTime(long j) {
        e = j;
    }

    public static void setSupportChina(boolean z) {
        d = Boolean.valueOf(z);
    }

    public String getAppName(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        try {
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0)).toString();
        } catch (PackageManager.NameNotFoundException | Resources.NotFoundException unused) {
            LogM.e("MapClientIdentify", "In getAppName, Failed to get app name.");
            return "";
        }
    }

    public boolean regestIdentity(Context context, ICreator iCreator) {
        LogM.d("MapClientIdentify", "sdk start regestIdentity to provider ");
        if (this.f != null) {
            LogM.d("MapClientIdentify", "already invoked.");
            return true;
        }
        if (iCreator == null) {
            LogM.d("MapClientIdentify", "creator is null.");
            return false;
        }
        String packageName = context.getApplicationContext().getPackageName();
        String appName = getAppName(context, packageName);
        if ("".equals(c)) {
            LogM.e("MapClientIdentify", "AppId is null. Please check if agconnect-services.json file is is added in app project.");
        }
        com.huawei.hms.maps.model.maa maaVarA = new com.huawei.hms.maps.model.maa().b(c).c(packageName).d(appName).e(getInstalledAppHash(context, packageName)).f(b).a(e).a(getPackageCode(context));
        try {
            IMapClientIdentity iMapClientIdentityNewMapClientIdentity = iCreator.newMapClientIdentity(ObjectWrapper.wrap(com.huawei.hms.maps.internal.mac.d(context)));
            this.f = iMapClientIdentityNewMapClientIdentity;
            iMapClientIdentityNewMapClientIdentity.regestToProvierIdentity(maaVarA);
            LogM.d("MapClientIdentify", "Identity param regestToProvier success");
            return true;
        } catch (RemoteException unused) {
            LogM.e("MapClientIdentify", "regestIdentity RemoteException");
            return false;
        }
    }
}
