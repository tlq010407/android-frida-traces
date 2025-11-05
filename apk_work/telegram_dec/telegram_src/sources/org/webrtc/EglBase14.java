package org.webrtc;

import android.opengl.EGLContext;
import org.webrtc.EglBase;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public interface EglBase14 extends EglBase {

    public interface Context extends EglBase.Context {
        EGLContext getRawContext();
    }
}
