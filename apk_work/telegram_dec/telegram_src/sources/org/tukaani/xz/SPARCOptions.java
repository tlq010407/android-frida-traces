package org.tukaani.xz;

import java.io.InputStream;
import org.tukaani.xz.simple.SPARC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class SPARCOptions extends BCJOptions {
    public SPARCOptions() {
        super(4);
    }

    @Override // org.tukaani.xz.BCJOptions
    public /* bridge */ /* synthetic */ Object clone() {
        return super.clone();
    }

    @Override // org.tukaani.xz.FilterOptions
    public InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) {
        return new SimpleInputStream(inputStream, new SPARC(false, this.startOffset));
    }
}
