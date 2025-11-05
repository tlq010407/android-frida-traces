package com.huawei.location.lite.common.util;

import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.secure.android.common.util.SafeString;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class CanonicalQueryString {
    private SortedMap params = new TreeMap();

    public CanonicalQueryString(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        for (String str2 : str.split(ContainerUtils.FIELD_DELIMITER)) {
            int iIndexOf = str2.indexOf(ContainerUtils.KEY_VALUE_DELIMITER);
            if (iIndexOf != -1) {
                this.params.put(SafeString.substring(str2, 0, iIndexOf), SafeString.substring(str2, iIndexOf + 1));
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        for (String str : this.params.keySet()) {
            if (sb.length() > 0) {
                sb.append(ContainerUtils.FIELD_DELIMITER);
            }
            String str2 = (String) this.params.get(str);
            sb.append(str);
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb.append(str2);
        }
        return sb.toString();
    }
}
