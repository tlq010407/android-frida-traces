package com.huawei.location.router.interfaces;

import com.huawei.location.router.entity.IRouterResponse;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IRouterRequest {
    IRouterResponse onExecute(String str);

    void onRequest(String str);
}
