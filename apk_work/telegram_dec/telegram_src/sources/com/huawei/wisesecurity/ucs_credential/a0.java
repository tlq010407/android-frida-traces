package com.huawei.wisesecurity.ucs_credential;

import android.os.Build;
import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.location.lite.common.http.request.HeadBuilder;
import com.huawei.wisesecurity.ucs.credential.entity.AccessKey;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class a0 {

    public static class a {
        public Map a = new HashMap();

        public String toString() {
            if (this.a.size() == 0) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            for (Map.Entry entry : this.a.entrySet()) {
                sb.append((String) entry.getKey());
                sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb.append((String) entry.getValue());
                sb.append(",");
            }
            sb.deleteCharAt(sb.lastIndexOf(","));
            return sb.toString();
        }
    }

    public static Map a(String str, String str2, String str3) {
        HashMap map = new HashMap();
        map.put("Content-Type", "application/json");
        if (!TextUtils.isEmpty(str)) {
            map.put("X-App-ID", str);
        }
        map.put("X-Client-Version", "1.0.3.311");
        String str4 = Build.MODEL;
        map.put("terminalType", str4);
        map.put(HeadBuilder.X_REQUEST_ID, str3);
        map.put("X-Credential-Terminal", "aucs");
        a aVar = new a();
        aVar.a.put("terminalType", str4);
        aVar.a.put(AccessKey.APP_PKG_NAME, str2);
        aVar.a.put("callTime", String.valueOf(System.currentTimeMillis()));
        map.put("X-RequestContext", aVar.toString());
        return map;
    }
}
