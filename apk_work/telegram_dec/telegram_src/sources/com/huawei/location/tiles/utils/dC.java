package com.huawei.location.tiles.utils;

import java.io.File;
import java.util.Comparator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
final class dC implements Comparator {
    dC() {
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return (int) (((File) obj2).lastModified() - ((File) obj).lastModified());
    }
}
