package com.huawei.location;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.req.BackgroundReq;
import com.huawei.location.service.BackGroundService;
import com.huawei.location.utils.yn;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class EnableGroundTaskCall extends BaseApiRequest {
    private static final String TAG = "EnableGroundTaskCall";

    @Override // com.huawei.location.router.interfaces.IRouterRequest
    public void onRequest(String str) {
        LogConsole.i(TAG, "onRequest EnableGroundTaskCall");
        BackgroundReq backgroundReq = new BackgroundReq();
        yn.yn(str, backgroundReq);
        Context context = ContextUtil.getContext();
        Notification notification = (Notification) getParcelable();
        Intent intent = new Intent(context, (Class<?>) BackGroundService.class);
        intent.putExtra("notificationId", backgroundReq.getNotificationId());
        intent.putExtra(RemoteMessageConst.NOTIFICATION, notification);
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }
}
