package org.telegram.messenger.voip;

import java.nio.ByteBuffer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Resampler {
    public static native int convert44to48(ByteBuffer byteBuffer, ByteBuffer byteBuffer2);

    public static native int convert48to44(ByteBuffer byteBuffer, ByteBuffer byteBuffer2);
}
