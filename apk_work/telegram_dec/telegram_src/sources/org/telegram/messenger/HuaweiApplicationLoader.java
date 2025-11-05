package org.telegram.messenger;

import com.google.firebase.messaging.FirebaseMessaging;
import com.huawei.hms.push.HmsMessaging;
import org.telegram.messenger.PushListenerController;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class HuaweiApplicationLoader extends ApplicationLoader {
    @Override // org.telegram.messenger.ApplicationLoader
    protected boolean isHuaweiBuild() {
        return true;
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected ILocationServiceProvider onCreateLocationServiceProvider() {
        return PushListenerController.GooglePushListenerServiceProvider.INSTANCE.hasServices() ? new GoogleLocationProvider() : new HuaweiLocationProvider();
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected IMapsProvider onCreateMapsProvider() {
        return PushListenerController.GooglePushListenerServiceProvider.INSTANCE.hasServices() ? new GoogleMapsProvider() : new HuaweiMapsProvider();
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected PushListenerController.IPushListenerServiceProvider onCreatePushProvider() {
        PushListenerController.GooglePushListenerServiceProvider googlePushListenerServiceProvider = PushListenerController.GooglePushListenerServiceProvider.INSTANCE;
        if (googlePushListenerServiceProvider.hasServices()) {
            HmsMessaging.getInstance(this).setAutoInitEnabled(false);
            FirebaseMessaging.getInstance().setAutoInitEnabled(true);
            return googlePushListenerServiceProvider;
        }
        HmsMessaging.getInstance(this).setAutoInitEnabled(true);
        FirebaseMessaging.getInstance().setAutoInitEnabled(false);
        return HuaweiPushListenerProvider.INSTANCE;
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected String onGetApplicationId() {
        return BuildConfig.LIBRARY_PACKAGE_NAME;
    }
}
