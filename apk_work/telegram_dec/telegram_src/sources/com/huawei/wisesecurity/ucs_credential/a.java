package com.huawei.wisesecurity.ucs_credential;

import android.text.TextUtils;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class a {
    public static Map a = new ConcurrentHashMap();

    public static byte[] a(String str) throws UcsException {
        if (TextUtils.isEmpty(str)) {
            LogUcs.e("KekStore", "getKek param is null.", new Object[0]);
            throw new UcsException(1001L, "getKek param is null.");
        }
        if (a.containsKey(str)) {
            return (byte[]) a.get(str);
        }
        throw new UcsException(2001L, "kek is empty");
    }
}
