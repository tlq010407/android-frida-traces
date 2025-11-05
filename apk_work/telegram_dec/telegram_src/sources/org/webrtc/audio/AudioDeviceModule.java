package org.webrtc.audio;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public interface AudioDeviceModule {

    /* renamed from: org.webrtc.audio.AudioDeviceModule$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static boolean $default$setNoiseSuppressorEnabled(AudioDeviceModule audioDeviceModule, boolean z) {
            return false;
        }

        public static boolean $default$setPreferredMicrophoneFieldDimension(AudioDeviceModule audioDeviceModule, float f) {
            return false;
        }
    }

    long getNativeAudioDeviceModulePointer();

    void release();

    void setMicrophoneMute(boolean z);

    boolean setNoiseSuppressorEnabled(boolean z);

    boolean setPreferredMicrophoneFieldDimension(float f);

    void setSpeakerMute(boolean z);
}
