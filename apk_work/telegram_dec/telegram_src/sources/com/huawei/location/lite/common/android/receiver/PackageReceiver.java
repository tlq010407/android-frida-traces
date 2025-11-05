package com.huawei.location.lite.common.android.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.secure.android.common.intent.SafeIntent;
import com.huawei.secure.android.common.util.SafeString;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class PackageReceiver extends BroadcastReceiver {
    private static final byte[] SYNC_LOCK = new byte[0];
    private static volatile PackageReceiver instance;
    AtomicBoolean isRegisterBr = new AtomicBoolean(false);
    private List callbackList = new CopyOnWriteArrayList();

    public static PackageReceiver getInstance() {
        if (instance == null) {
            synchronized (SYNC_LOCK) {
                try {
                    if (instance == null) {
                        instance = new PackageReceiver();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    private IntentFilter getPackageFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addDataScheme("package");
        return intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            LogConsole.e("PackageReceiver", "PackageReceiver receive null intent");
            return;
        }
        SafeIntent safeIntent = new SafeIntent(intent);
        String dataString = safeIntent.getDataString();
        if (TextUtils.isEmpty(dataString)) {
            dataString = "";
        }
        String strReplace = SafeString.replace(dataString, "package:", "");
        if ("android.intent.action.PACKAGE_REMOVED".equals(safeIntent.getAction())) {
            LogConsole.i("PackageReceiver", "package_remove:" + strReplace);
            for (PackageOperateCallback packageOperateCallback : this.callbackList) {
                if (packageOperateCallback != null) {
                    packageOperateCallback.onRemoved(strReplace);
                }
            }
            return;
        }
        if ("android.intent.action.PACKAGE_ADDED".equals(safeIntent.getAction())) {
            LogConsole.i("PackageReceiver", "package_add:" + strReplace);
            for (PackageOperateCallback packageOperateCallback2 : this.callbackList) {
                if (packageOperateCallback2 != null) {
                    packageOperateCallback2.onAdded(strReplace);
                }
            }
            return;
        }
        if (!"android.intent.action.PACKAGE_REPLACED".equals(safeIntent.getAction())) {
            LogConsole.i("PackageReceiver", "action ===:" + safeIntent.getAction());
            return;
        }
        LogConsole.i("PackageReceiver", "package_replace:" + strReplace);
        for (PackageOperateCallback packageOperateCallback3 : this.callbackList) {
            if (packageOperateCallback3 != null) {
                packageOperateCallback3.onReplaced(strReplace);
            }
        }
    }

    public void registerCallback(PackageOperateCallback packageOperateCallback) {
        if (packageOperateCallback != null) {
            this.callbackList.add(packageOperateCallback);
        }
        if (this.isRegisterBr.get()) {
            return;
        }
        ContextUtil.getContext().registerReceiver(getInstance(), getPackageFilter());
        this.isRegisterBr.set(true);
    }
}
