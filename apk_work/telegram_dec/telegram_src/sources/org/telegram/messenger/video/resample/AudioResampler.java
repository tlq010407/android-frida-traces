package org.telegram.messenger.video.resample;

import java.nio.ShortBuffer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface AudioResampler {
    public static final AudioResampler DOWNSAMPLE = new DownsampleAudioResampler();
    public static final AudioResampler UPSAMPLE = new UpsampleAudioResampler();
    public static final AudioResampler PASSTHROUGH = new PassThroughAudioResampler();

    void resample(ShortBuffer shortBuffer, int i, ShortBuffer shortBuffer2, int i2, int i3);
}
