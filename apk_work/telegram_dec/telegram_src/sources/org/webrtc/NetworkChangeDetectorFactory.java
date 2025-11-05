package org.webrtc;

import android.content.Context;
import org.webrtc.NetworkChangeDetector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public interface NetworkChangeDetectorFactory {
    NetworkChangeDetector create(NetworkChangeDetector.Observer observer, Context context);
}
