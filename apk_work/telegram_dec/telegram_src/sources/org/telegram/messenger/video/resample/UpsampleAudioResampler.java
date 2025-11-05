package org.telegram.messenger.video.resample;

import java.nio.ShortBuffer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class UpsampleAudioResampler implements AudioResampler {
    private static short fakeSample(ShortBuffer shortBuffer, ShortBuffer shortBuffer2, int i, int i2) {
        return shortBuffer.get(shortBuffer.position() - i2);
    }

    private static float ratio(int i, int i2) {
        return i / i2;
    }

    @Override // org.telegram.messenger.video.resample.AudioResampler
    public void resample(ShortBuffer shortBuffer, int i, ShortBuffer shortBuffer2, int i2, int i3) {
        if (i > i2) {
            throw new IllegalArgumentException("Illegal use of UpsampleAudioResampler");
        }
        if (i3 != 1 && i3 != 2) {
            throw new IllegalArgumentException("Illegal use of UpsampleAudioResampler. Channels:" + i3);
        }
        int iRemaining = shortBuffer.remaining() / i3;
        double d = iRemaining;
        double d2 = i2;
        double d3 = i;
        Double.isNaN(d2);
        Double.isNaN(d3);
        Double.isNaN(d);
        int iCeil = ((int) Math.ceil(d * (d2 / d3))) - iRemaining;
        float fRatio = ratio(iRemaining, iRemaining);
        float fRatio2 = ratio(iCeil, iCeil);
        int i4 = iCeil;
        int i5 = iRemaining;
        while (i5 > 0 && i4 > 0) {
            if (fRatio >= fRatio2) {
                shortBuffer2.put(shortBuffer.get());
                if (i3 == 2) {
                    shortBuffer2.put(shortBuffer.get());
                }
                i5--;
                fRatio = ratio(i5, iRemaining);
            } else {
                shortBuffer2.put(fakeSample(shortBuffer2, shortBuffer, 1, i3));
                if (i3 == 2) {
                    shortBuffer2.put(fakeSample(shortBuffer2, shortBuffer, 2, i3));
                }
                i4--;
                fRatio2 = ratio(i4, iCeil);
            }
        }
    }
}
