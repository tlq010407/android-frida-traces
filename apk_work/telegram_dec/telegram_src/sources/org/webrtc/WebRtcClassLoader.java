package org.webrtc;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
class WebRtcClassLoader {
    WebRtcClassLoader() {
    }

    static Object getClassLoader() {
        ClassLoader classLoader = WebRtcClassLoader.class.getClassLoader();
        if (classLoader != null) {
            return classLoader;
        }
        throw new RuntimeException("Failed to get WebRTC class loader.");
    }
}
