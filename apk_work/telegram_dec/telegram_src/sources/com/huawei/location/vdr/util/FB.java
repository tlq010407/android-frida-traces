package com.huawei.location.vdr.util;

import android.content.Context;
import android.os.Build;
import com.huawei.location.lite.common.android.context.ContextUtil;
import java.io.File;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class FB {
    public static final String Vw;
    public static final String yn;

    static {
        StringBuilder sb = new StringBuilder();
        Context context = ContextUtil.getContext();
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            context = context.createDeviceProtectedStorageContext();
        }
        sb.append(context.getFilesDir().getPath());
        String str = File.separator;
        sb.append(str);
        yn = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        Context context2 = ContextUtil.getContext();
        sb2.append((i >= 24 ? context2.createDeviceProtectedStorageContext().getFilesDir() : context2.getFilesDir()).getPath());
        sb2.append(str);
        sb2.append("libVdr.so");
        Vw = sb2.toString();
    }
}
