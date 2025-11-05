package org.telegram.messenger;

import android.content.pm.PackageManager;
import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hms.aaid.HmsInstanceId;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.push.HmsMessaging;
import org.telegram.messenger.PushListenerController;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class HuaweiPushListenerProvider implements PushListenerController.IPushListenerServiceProvider {
    public static final HuaweiPushListenerProvider INSTANCE = new HuaweiPushListenerProvider();
    private Boolean hasServices;

    private HuaweiPushListenerProvider() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPushToken$0() {
        try {
            String token = HmsInstanceId.getInstance(ApplicationLoader.applicationContext).getToken(BuildVars.HUAWEI_APP_ID, HmsMessaging.DEFAULT_TOKEN_SCOPE);
            SharedConfig.pushStringGetTimeEnd = SystemClock.elapsedRealtime();
            if (TextUtils.isEmpty(token)) {
                return;
            }
            PushListenerController.sendRegistrationToServer(getPushType(), token);
        } catch (ApiException e) {
            FileLog.e(e);
            SharedConfig.pushStringGetTimeEnd = SystemClock.elapsedRealtime();
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("Failed to get regid");
            }
            SharedConfig.pushStringStatus = "__HUAWEI_FAILED__";
            PushListenerController.sendRegistrationToServer(getPushType(), null);
        }
    }

    @Override // org.telegram.messenger.PushListenerController.IPushListenerServiceProvider
    public String getLogTitle() {
        return "HMS Core";
    }

    @Override // org.telegram.messenger.PushListenerController.IPushListenerServiceProvider
    public int getPushType() {
        return 13;
    }

    @Override // org.telegram.messenger.PushListenerController.IPushListenerServiceProvider
    public boolean hasServices() throws PackageManager.NameNotFoundException {
        if (this.hasServices == null) {
            try {
                ApplicationLoader.applicationContext.getPackageManager().getPackageInfo("com.huawei.hwid", 0);
                this.hasServices = Boolean.TRUE;
            } catch (PackageManager.NameNotFoundException unused) {
                this.hasServices = Boolean.FALSE;
                return this.hasServices.booleanValue();
            } catch (Exception e) {
                FileLog.e(e);
                this.hasServices = Boolean.FALSE;
                return this.hasServices.booleanValue();
            }
        }
        return this.hasServices.booleanValue();
    }

    @Override // org.telegram.messenger.PushListenerController.IPushListenerServiceProvider
    public void onRequestPushToken() {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.HuaweiPushListenerProvider$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onRequestPushToken$0();
            }
        });
    }
}
