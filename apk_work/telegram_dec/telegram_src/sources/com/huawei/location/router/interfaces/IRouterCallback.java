package com.huawei.location.router.interfaces;

import com.huawei.location.router.RouterResponse;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IRouterCallback {
    void doExecute(RouterResponse routerResponse);

    void onComplete(RouterResponse routerResponse);
}
