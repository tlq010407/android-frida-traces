package org.webrtc;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class AudioSource extends MediaSource {
    public AudioSource(long j) {
        super(j);
    }

    long getNativeAudioSource() {
        return getNativeMediaSource();
    }
}
