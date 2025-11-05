package com.google.android.gms.internal.mlkit_vision_label;

import java.util.Iterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class zzbi {
    static void zza(Iterator it) {
        it.getClass();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }
}
