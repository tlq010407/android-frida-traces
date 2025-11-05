package com.huawei.hms.feature.dynamic.e;

import android.content.Context;
import android.os.Bundle;
import com.huawei.hms.common.util.Logger;
import com.huawei.hms.feature.dynamic.DynamicModule;
import java.lang.reflect.InvocationTargetException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class c implements DynamicModule.VersionPolicy {
    public static final String a = "c";

    @Override // com.huawei.hms.feature.dynamic.DynamicModule.VersionPolicy
    public Bundle getModuleInfo(Context context, String str) throws IllegalAccessException, DynamicModule.g, NoSuchFieldException, NoSuchMethodException, SecurityException, ClassNotFoundException, IllegalArgumentException, DynamicModule.LoadingException, InvocationTargetException {
        DynamicModule.LoadingException loadingException;
        Bundle bundle;
        try {
            bundle = DynamicModule.getRemoteModuleInfo(context, str);
            loadingException = null;
        } catch (DynamicModule.LoadingException e) {
            loadingException = e.getBundle() != null ? new DynamicModule.LoadingException(e.getMessage(), e.getBundle()) : new DynamicModule.LoadingException(e.getMessage());
            Logger.w(a, "Get remote module info failed: " + e.getMessage() + ". try to query local.");
            bundle = new Bundle();
        }
        Bundle localModuleInfo = DynamicModule.getLocalModuleInfo(context, str);
        String str2 = a;
        Logger.i(str2, "The version of remote module " + str + ":" + bundle.getInt(com.huawei.hms.feature.dynamic.b.k));
        Logger.i(str2, "The version of local module " + str + ":" + localModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.l));
        if (localModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.l) > 0 && localModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.l) >= bundle.getInt(com.huawei.hms.feature.dynamic.b.k)) {
            Logger.i(str2, "Choose local module info.");
            return localModuleInfo;
        }
        if (loadingException != null && bundle.getInt(com.huawei.hms.feature.dynamic.b.k) == 0) {
            throw loadingException;
        }
        Logger.i(str2, "Choose remote module info.");
        return bundle;
    }
}
