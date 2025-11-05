package com.google.firebase.messaging;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.concurrent.TimeUnit;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class Constants {
    public static final long WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS = TimeUnit.MINUTES.toMillis(3);

    public static final class MessagePayloadKeys {
        public static ArrayMap extractDeveloperDefinedPayload(Bundle bundle) {
            ArrayMap arrayMap = new ArrayMap();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals(RemoteMessageConst.FROM) && !str.equals(RemoteMessageConst.MSGTYPE) && !str.equals("collapse_key")) {
                        arrayMap.put(str, str2);
                    }
                }
            }
            return arrayMap;
        }
    }
}
