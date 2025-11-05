package org.telegram.ui.Stories.recorder;

import android.media.MediaCodec;
import java.io.IOException;
import org.telegram.ui.Stories.recorder.TimelineView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public final /* synthetic */ class TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ TimelineView.AudioWaveformLoader f$0;

    public /* synthetic */ TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda0(TimelineView.AudioWaveformLoader audioWaveformLoader) {
        this.f$0 = audioWaveformLoader;
    }

    @Override // java.lang.Runnable
    public final void run() throws MediaCodec.CryptoException, IOException {
        this.f$0.run();
    }
}
