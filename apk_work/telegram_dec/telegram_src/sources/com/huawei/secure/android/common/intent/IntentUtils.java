package com.huawei.secure.android.common.intent;

import android.content.Intent;
import com.huawei.secure.android.common.activity.a;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class IntentUtils {
    public static boolean hasIntentBomb(Intent intent) {
        boolean zHasIntentBomb = true;
        if (intent == null) {
            a.a("IntentUtils", "intent is null");
        } else if (intent instanceof SafeIntent) {
            a.b("IntentUtils", "safe intent");
            zHasIntentBomb = ((SafeIntent) intent).hasIntentBomb();
        } else {
            try {
                intent.getStringExtra("ANYTHING");
                zHasIntentBomb = false;
            } catch (Throwable unused) {
            }
        }
        if (zHasIntentBomb) {
            a.a("IntentUtils", "hasIntentBomb");
        }
        return zHasIntentBomb;
    }
}
