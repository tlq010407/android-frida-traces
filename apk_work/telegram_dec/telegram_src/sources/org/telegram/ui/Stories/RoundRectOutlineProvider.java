package org.telegram.ui.Stories;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import org.telegram.messenger.AndroidUtilities;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class RoundRectOutlineProvider extends ViewOutlineProvider {
    public float radiusInDp;

    public RoundRectOutlineProvider(int i) {
        this.radiusInDp = i;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight(), AndroidUtilities.dpf2(this.radiusInDp));
    }
}
