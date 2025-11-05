package com.huawei.location.activity;

import com.huawei.location.router.BaseRouterTaskCallImpl;
import com.huawei.location.util.yn;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class BaseApiTaskCall extends BaseRouterTaskCallImpl {
    private static final String TAG = "BaseApiTaskCall";
    protected yn.C0036yn reportBuilder = new yn.C0036yn();
    protected int errorCode = 0;
    protected String errorReason = "";
}
