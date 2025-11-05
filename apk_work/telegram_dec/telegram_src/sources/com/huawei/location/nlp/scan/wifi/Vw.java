package com.huawei.location.nlp.scan.wifi;

import android.content.Context;
import android.content.Intent;
import com.huawei.secure.android.common.intent.SafeBroadcastReceiver;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
class Vw extends SafeBroadcastReceiver {
    final /* synthetic */ FB yn;

    Vw(FB fb) {
        this.yn = fb;
    }

    @Override // com.huawei.secure.android.common.intent.SafeBroadcastReceiver
    public void onReceiveMsg(Context context, Intent intent) {
        if (this.yn.dC) {
            return;
        }
        FB.yn(this.yn, intent);
    }
}
