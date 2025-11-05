package com.huawei.hms.framework.network.grs;

import android.content.Context;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class d {
    private static final Map<String, c> a = new ConcurrentHashMap(16);
    private static final Object b = new Object();

    public static c a(GrsBaseInfo grsBaseInfo, Context context) {
        synchronized (b) {
            try {
                int iUniqueCode = grsBaseInfo.uniqueCode();
                Map<String, c> map = a;
                c cVar = map.get(context.getPackageName() + iUniqueCode);
                if (cVar == null) {
                    c cVar2 = new c(context, grsBaseInfo);
                    map.put(context.getPackageName() + iUniqueCode, cVar2);
                    return cVar2;
                }
                if (cVar.a((Object) new c(grsBaseInfo))) {
                    return cVar;
                }
                c cVar3 = new c(context, grsBaseInfo);
                map.put(context.getPackageName() + iUniqueCode, cVar3);
                return cVar3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
