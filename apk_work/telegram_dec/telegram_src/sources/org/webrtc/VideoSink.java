package org.webrtc;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public interface VideoSink {

    /* renamed from: org.webrtc.VideoSink$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$setParentSink(VideoSink videoSink, VideoSink videoSink2) {
        }
    }

    void onFrame(VideoFrame videoFrame);

    void setParentSink(VideoSink videoSink);
}
