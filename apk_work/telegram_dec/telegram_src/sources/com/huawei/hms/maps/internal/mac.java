package com.huawei.hms.maps.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import com.huawei.hms.common.Preconditions;
import com.huawei.hms.feature.dynamic.DynamicModule;
import com.huawei.hms.feature.dynamic.ObjectWrapper;
import com.huawei.hms.feature.dynamic.b;
import com.huawei.hms.maps.MapClientIdentify;
import com.huawei.hms.maps.internal.ICreator;
import com.huawei.hms.maps.utils.DynamicUtil;
import com.huawei.hms.maps.utils.LogM;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class mac {
    private static Context a = null;
    private static ICreator b = null;
    private static boolean c = true;
    private static volatile boolean d = false;
    private static int e;
    private static SharedPreferences f;

    public static ICreator a(Context context) {
        if (!DynamicUtil.isAndroidN()) {
            return b;
        }
        LogM.i("MapCreator", "get creator async.");
        return c(context);
    }

    public static void a() {
        a = null;
        b = null;
    }

    protected static void a(boolean z) {
        c = z;
    }

    public static ICreator b(Context context) {
        d = true;
        ICreator iCreatorC = c(context);
        d = false;
        return iCreatorC;
    }

    public static void b(boolean z) {
        SharedPreferences sharedPreferences = f;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putBoolean("providerUpdateFlag", z).apply();
    }

    public static synchronized ICreator c(Context context) {
        Preconditions.checkNotNull(context);
        ICreator iCreator = b;
        if (iCreator != null) {
            return iCreator;
        }
        LogM.i("MapCreator", "Making Creator dynamically");
        ICreator iCreator2 = null;
        try {
            Context contextD = d(context);
            if (contextD == null) {
                LogM.e("MapCreator", "getRemoteMapContext failed");
                return null;
            }
            Object objNewInstance = contextD.getClassLoader().loadClass("com.huawei.hms.maps.CreatorImpl").newInstance();
            if (objNewInstance instanceof IBinder) {
                ICreator iCreatorAsInterface = ICreator.Stub.asInterface((IBinder) objNewInstance);
                iCreatorAsInterface.init(ObjectWrapper.wrap(contextD.getResources()), 1000);
                iCreator2 = iCreatorAsInterface;
            }
            b = iCreator2;
            return iCreator2;
        } catch (Throwable unused) {
            LogM.e("MapCreator", "loadClass failed");
            a = null;
            DynamicUtil.setDynamicModule(null);
            return null;
        }
    }

    public static Context d(Context context) throws InterruptedException {
        MapClientIdentify.setAppContext(context);
        Context context2 = a;
        if (context2 != null) {
            return context2;
        }
        Context contextF = f(context);
        a = contextF;
        return contextF;
    }

    public static SharedPreferences e(Context context) {
        if (f == null) {
            f = context.getSharedPreferences("com.huawei.hmsmap.updateFlag", 0);
        }
        return f;
    }

    private static Context f(Context context) throws InterruptedException {
        String str;
        String str2;
        try {
            DynamicUtil.handlerDynamicLoadAfterLogic("huawei_module_maps", context);
            if (DynamicUtil.getDynamicModule() == null) {
                DynamicUtil.setDynamicModule(DynamicModule.load(context, DynamicModule.PREFER_HIGHEST_OR_REMOTE_VERSION, "huawei_module_maps"));
            }
            if (DynamicUtil.getDynamicModule() != null) {
                return DynamicUtil.getDynamicModule().getModuleContext();
            }
            return null;
        } catch (DynamicModule.LoadingException e2) {
            LogM.e("MapCreator", "Loading mapRoute dynamically failed, exception is " + e2.getMessage());
            Bundle bundle = e2.getBundle();
            if (bundle == null || bundle.getInt(b.h) != 2) {
                StringBuilder sb = new StringBuilder();
                sb.append("getRemoteContext: LoadingException: ");
                if (bundle == null) {
                    str = "bundle = null";
                } else {
                    str = "errcode = " + bundle.getInt(b.h);
                }
                sb.append(str);
                sb.append(", and retryCount is ");
                sb.append(e);
                LogM.e("MapCreator", sb.toString());
                if (DynamicUtil.isAndroidN() || d || Thread.currentThread() == Looper.getMainLooper().getThread()) {
                    return null;
                }
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException unused) {
                    LogM.e("MapCreator", "InterruptedException: getRemoteContext failed.");
                }
                int i = e;
                if (i < 200) {
                    e = i + 1;
                    return f(context);
                }
                str2 = "Failed to obtain remote context. The maximum number of times has been reached.";
            } else {
                LogM.e("MapCreator", "getRemoteContext: LoadingException: errcode = " + bundle.getInt(b.h));
                Intent intent = (Intent) bundle.getParcelable("resolution");
                if (intent != null) {
                    LogM.e("MapCreator", "get intent successfully.");
                    intent.setFlags(268435456);
                    if (!c) {
                        return null;
                    }
                    try {
                        context.startActivity(intent);
                        c = false;
                        LogM.e("MapCreator", "startUpdateActivity Success.");
                        return null;
                    } catch (ActivityNotFoundException unused2) {
                        LogM.e("MapCreator", "startActivity error ActivityNotFound.");
                        return null;
                    }
                }
                str2 = "null intent, please check it.";
            }
            LogM.e("MapCreator", str2);
            return null;
        }
    }
}
