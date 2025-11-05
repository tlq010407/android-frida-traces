package org.tukaani.xz;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class CorruptedInputException extends XZIOException {
    public CorruptedInputException() {
        super("Compressed data is corrupt");
    }

    public CorruptedInputException(String str) {
        super(str);
    }
}
