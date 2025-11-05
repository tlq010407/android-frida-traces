package com.huawei.hms.push;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.huawei.hms.support.log.HMSLog;
import java.lang.reflect.Field;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class r {
    public static int a(Context context, String str) throws PackageManager.NameNotFoundException {
        Bundle bundle;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                return 0;
            }
            return bundle.getInt(str);
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.w("ResourceLoader", "load meta data resource failed.");
            return 0;
        }
    }

    public static int a(Context context, String str, String str2) throws NoSuchFieldException, NumberFormatException {
        StringBuilder sb;
        String str3;
        try {
            int identifier = context.getResources().getIdentifier(str2, str, context.getPackageName());
            if (identifier == 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(context.getPackageName());
                sb2.append(".R$");
                sb2.append(str);
                Field field = Class.forName(sb2.toString()).getField(str2);
                identifier = Integer.parseInt(field.get(field.getName()).toString());
                if (identifier == 0) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Error-resourceType=");
                    sb3.append(str);
                    sb3.append("--resourceName=");
                    sb3.append(str2);
                    sb3.append("--resourceId =");
                    sb3.append(identifier);
                    HMSLog.i("ResourceLoader", sb3.toString());
                }
            }
            return identifier;
        } catch (ClassNotFoundException e) {
            e = e;
            sb = new StringBuilder();
            str3 = "!!!! ResourceLoader: ClassNotFoundException-resourceType=";
            sb.append(str3);
            sb.append(str);
            sb.append("--resourceName=");
            sb.append(str2);
            HMSLog.e("ResourceLoader", sb.toString(), e);
            return 0;
        } catch (IllegalAccessException e2) {
            e = e2;
            sb = new StringBuilder();
            str3 = "!!!! ResourceLoader: IllegalAccessException-resourceType=";
            sb.append(str3);
            sb.append(str);
            sb.append("--resourceName=");
            sb.append(str2);
            HMSLog.e("ResourceLoader", sb.toString(), e);
            return 0;
        } catch (NoSuchFieldException e3) {
            e = e3;
            sb = new StringBuilder();
            str3 = "!!!! ResourceLoader: NoSuchFieldException-resourceType=";
            sb.append(str3);
            sb.append(str);
            sb.append("--resourceName=");
            sb.append(str2);
            HMSLog.e("ResourceLoader", sb.toString(), e);
            return 0;
        } catch (NumberFormatException e4) {
            e = e4;
            sb = new StringBuilder();
            str3 = "!!!! ResourceLoader: NumberFormatException-resourceType=";
            sb.append(str3);
            sb.append(str);
            sb.append("--resourceName=");
            sb.append(str2);
            HMSLog.e("ResourceLoader", sb.toString(), e);
            return 0;
        } catch (IllegalArgumentException e5) {
            e = e5;
            sb = new StringBuilder();
            str3 = "!!!! ResourceLoader: IllegalArgumentException-resourceType=";
            sb.append(str3);
            sb.append(str);
            sb.append("--resourceName=");
            sb.append(str2);
            HMSLog.e("ResourceLoader", sb.toString(), e);
            return 0;
        }
    }
}
