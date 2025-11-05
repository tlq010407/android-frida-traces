package com.huawei.location.lite.common.http.sign;

import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    private C0026yn yn;

    /* renamed from: com.huawei.location.lite.common.http.sign.yn$yn, reason: collision with other inner class name */
    public static final class C0026yn {
        Map yn = new HashMap(4);

        public C0026yn yn(String str, String str2) {
            this.yn.put(str, str2);
            return this;
        }
    }

    public yn(C0026yn c0026yn) {
        this.yn = c0026yn;
    }

    public String[] yn() {
        StringBuffer stringBuffer = new StringBuffer("");
        StringBuffer stringBuffer2 = new StringBuffer("");
        for (Map.Entry entry : this.yn.yn.entrySet()) {
            stringBuffer.append((String) entry.getKey());
            stringBuffer.append(ContainerUtils.KEY_VALUE_DELIMITER);
            stringBuffer.append((String) entry.getValue());
            stringBuffer.append(ContainerUtils.FIELD_DELIMITER);
            stringBuffer2.append((String) entry.getKey());
            stringBuffer2.append(";");
        }
        return new String[]{TextUtils.isEmpty(stringBuffer) ? "" : stringBuffer.substring(0, stringBuffer.length() - 1), TextUtils.isEmpty(stringBuffer2) ? "" : stringBuffer2.substring(0, stringBuffer2.length() - 1)};
    }
}
