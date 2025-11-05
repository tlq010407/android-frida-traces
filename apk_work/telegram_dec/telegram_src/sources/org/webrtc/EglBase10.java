package org.webrtc;

import javax.microedition.khronos.egl.EGLContext;
import org.webrtc.EglBase;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public interface EglBase10 extends EglBase {

    public interface Context extends EglBase.Context {
        EGLContext getRawContext();
    }
}
