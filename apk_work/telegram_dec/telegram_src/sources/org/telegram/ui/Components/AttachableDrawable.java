package org.telegram.ui.Components;

import android.view.View;
import org.telegram.messenger.ImageReceiver;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public interface AttachableDrawable {

    /* renamed from: org.telegram.ui.Components.AttachableDrawable$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$setParent(AttachableDrawable attachableDrawable, View view) {
        }
    }

    void onAttachedToWindow(ImageReceiver imageReceiver);

    void onDetachedFromWindow(ImageReceiver imageReceiver);

    void setParent(View view);
}
