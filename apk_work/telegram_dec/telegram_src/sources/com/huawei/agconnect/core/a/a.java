package com.huawei.agconnect.core.a;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.huawei.agconnect.AGCInitFinishManager;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class a extends AGCInitFinishManager {
    private static final List a = new CopyOnWriteArrayList();

    public static void a() {
        Iterator it = a.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
            throw null;
        }
    }
}
