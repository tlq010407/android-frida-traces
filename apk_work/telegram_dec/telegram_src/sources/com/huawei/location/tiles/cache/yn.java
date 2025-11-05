package com.huawei.location.tiles.cache;

import java.io.File;
import java.util.Comparator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
class yn implements Comparator {
    yn(Vw vw) {
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        long jLastModified = ((File) obj).lastModified() - ((File) obj2).lastModified();
        if (jLastModified > 0) {
            return -1;
        }
        return jLastModified == 0 ? 0 : 1;
    }
}
