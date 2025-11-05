package com.huawei.location.activity;

import com.huawei.location.FB;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.util.LoadSoUtil;
import java.io.File;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class Vw {
    public static final String Vw;
    public static final String yn;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(FB.yn(ContextUtil.getContext()));
        String str = File.separator;
        sb.append(str);
        yn = sb.toString();
        Vw = FB.yn(ContextUtil.getContext()) + str + LoadSoUtil.getCurrentCpuAbi(ContextUtil.getContext());
    }
}
