package org.tukaani.xz;

import java.io.InputStream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class FilterOptions implements Cloneable {
    FilterOptions() {
    }

    public InputStream getInputStream(InputStream inputStream) {
        return getInputStream(inputStream, ArrayCache.getDefaultCache());
    }

    public abstract InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache);
}
