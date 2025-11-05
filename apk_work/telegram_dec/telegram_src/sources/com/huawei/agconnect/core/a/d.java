package com.huawei.agconnect.core.a;

import android.content.Context;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class d {
    private static Map a = new HashMap();
    private static Map b = new HashMap();
    private Map c = new HashMap();
    private Map d = new HashMap();

    d(List list, Context context) {
        a(list, context);
    }

    public void a(List list, Context context) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
            throw null;
        }
    }
}
