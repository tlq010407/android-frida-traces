package com.huawei.location.service;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.secure.android.common.intent.SafeIntent;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class BackGroundService extends Service {
    private static final String TAG = "BackGroundService";

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        LogConsole.i(TAG, "BackGroundService onDestroy");
        stopForeground(true);
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        LogConsole.i(TAG, "BackGroundService onStartCommand");
        if (intent != null) {
            SafeIntent safeIntent = new SafeIntent(intent);
            int intExtra = safeIntent.getIntExtra("notificationId", 0);
            Notification notification = (Notification) safeIntent.getParcelableExtra(RemoteMessageConst.NOTIFICATION);
            if (intExtra == 0 || notification == null) {
                LogConsole.i(TAG, "notificationId or notification is empty");
            } else {
                startForeground(intExtra, notification);
            }
        }
        return 0;
    }
}
