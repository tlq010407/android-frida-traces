package com.huawei.location;

import android.content.Context;
import android.content.Intent;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.service.BackGroundService;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class DisableGroundTaskCall extends BaseApiRequest {
    private static final String TAG = "DisableGroundTaskCall";

    @Override // com.huawei.location.router.interfaces.IRouterRequest
    public void onRequest(String str) {
        LogConsole.i(TAG, "onRequest DisableGroundTaskCall");
        Context context = ContextUtil.getContext();
        context.stopService(new Intent(context, (Class<?>) BackGroundService.class));
    }
}
