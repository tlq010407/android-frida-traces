package org.telegram.messenger.support.customtabs;

import android.os.Bundle;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class CustomTabsCallback {
    public void extraCallback(String str, Bundle bundle) {
    }

    public void onMessageChannelReady(Bundle bundle) {
    }

    public abstract void onNavigationEvent(int i, Bundle bundle);

    public void onPostMessage(String str, Bundle bundle) {
    }
}
