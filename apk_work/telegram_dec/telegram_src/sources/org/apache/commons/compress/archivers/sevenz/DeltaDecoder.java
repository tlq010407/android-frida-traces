package org.apache.commons.compress.archivers.sevenz;

import java.io.InputStream;
import org.tukaani.xz.DeltaOptions;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
class DeltaDecoder extends CoderBase {
    DeltaDecoder() {
        super(Number.class);
    }

    private int getOptionsFromCoder(Coder coder) {
        byte[] bArr = coder.properties;
        if (bArr == null || bArr.length == 0) {
            return 1;
        }
        return (bArr[0] & 255) + 1;
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr, int i) {
        return new DeltaOptions(getOptionsFromCoder(coder)).getInputStream(inputStream);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    Object getOptionsFromCoder(Coder coder, InputStream inputStream) {
        return Integer.valueOf(getOptionsFromCoder(coder));
    }
}
