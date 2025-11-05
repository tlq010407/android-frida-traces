package org.tukaani.xz;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
abstract class BCJOptions extends FilterOptions {
    private final int alignment;
    int startOffset = 0;

    BCJOptions(int i) {
        this.alignment = i;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }
}
