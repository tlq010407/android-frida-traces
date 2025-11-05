package org.telegram.ui.Stars;

import android.view.View;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class ISuperRipple {
    public final View view;

    public ISuperRipple(View view) {
        this.view = view;
    }

    public abstract void animate(float f, float f2, float f3);
}
