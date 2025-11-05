package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import com.huawei.wisesecurity.ucs.common.utils.SpUtil;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class k {
    public String a() {
        return "Last-Query-Time_ucscomponent_ucscomponent.jws";
    }

    public Map a(Context context) {
        HashMap map = new HashMap();
        String string = SpUtil.getString("ETag_ucscomponent", "", context);
        String string2 = SpUtil.getString("Last-Modified_ucscomponent", "", context);
        map.put("ETag", string);
        map.put("If-Modified-Since", string2);
        return map;
    }
}
