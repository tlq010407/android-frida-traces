package com.google.android.gms.auth.api.phone;

import android.content.Context;
import com.google.android.gms.internal.p001authapiphone.zzab;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class SmsRetriever {
    public static SmsRetrieverClient getClient(Context context) {
        return new zzab(context);
    }
}
