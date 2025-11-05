package com.huawei.hms.locationSdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.location.lite.common.log.LogConsole;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class k1 implements g1 {
    public static boolean a(Context context) {
        String str;
        if (context == null) {
            str = "context is null";
        } else {
            z = c(context) || b(context);
            str = "isHMSEnable:" + z;
        }
        HMSLog.i("LiteSDKProxy", str);
        return z;
    }

    private static boolean b(Context context) {
        if (context == null) {
            return true;
        }
        boolean z = context.getPackageManager().checkPermission("android.permission.UPDATE_DEVICE_STATS", "com.huawei.hwid") == 0;
        HMSLog.i("LiteSDKProxy", "isHmsWithSysSignature：" + z);
        return z;
    }

    private static boolean c(Context context) throws PackageManager.NameNotFoundException {
        String str;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.huawei.hwid", LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM);
            if (packageInfo != null && (packageInfo.applicationInfo.flags & 1) != 0) {
                LogConsole.i("LiteSDKProxy", "is system app");
                return true;
            }
        } catch (PackageManager.NameNotFoundException unused) {
            str = "isSystemApplication NameNotFoundException";
            LogConsole.e("LiteSDKProxy", str);
            return false;
        } catch (RuntimeException unused2) {
            str = "Package Manager has died Exception";
            LogConsole.e("LiteSDKProxy", str);
            return false;
        }
        return false;
    }

    @Override // com.huawei.hms.locationSdk.g1
    public <TResult, TClient extends AnyClient, TOption extends Api.ApiOptions> Task a(HuaweiApi<TOption> huaweiApi, TaskApiCall<TClient, TResult> taskApiCall, AbstractClientBuilder<TClient, TOption> abstractClientBuilder) {
        HMSLog.i("LiteSDKProxy", "LiteSDKProxy doWriteProxy");
        return huaweiApi.doWrite(taskApiCall);
    }
}
