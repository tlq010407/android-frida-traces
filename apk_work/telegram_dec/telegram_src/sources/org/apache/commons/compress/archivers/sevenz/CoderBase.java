package org.apache.commons.compress.archivers.sevenz;

import java.io.InputStream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
abstract class CoderBase {
    private final Class[] acceptableOptions;

    protected CoderBase(Class... clsArr) {
        this.acceptableOptions = clsArr;
    }

    boolean canAcceptOptions(Object obj) {
        for (Class cls : this.acceptableOptions) {
            if (cls.isInstance(obj)) {
                return true;
            }
        }
        return false;
    }

    abstract InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr, int i);

    Object getOptionsFromCoder(Coder coder, InputStream inputStream) {
        return null;
    }
}
