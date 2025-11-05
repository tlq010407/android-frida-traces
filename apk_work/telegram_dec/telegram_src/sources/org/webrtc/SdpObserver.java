package org.webrtc;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public interface SdpObserver {
    void onCreateFailure(String str);

    void onCreateSuccess(SessionDescription sessionDescription);

    void onSetFailure(String str);

    void onSetSuccess();
}
