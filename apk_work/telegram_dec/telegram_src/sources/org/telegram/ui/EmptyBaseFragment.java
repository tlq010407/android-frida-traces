package org.telegram.ui;

import android.content.Context;
import android.view.View;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.SizeNotifierFrameLayout;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class EmptyBaseFragment extends BaseFragment {
    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context);
        this.fragmentView = sizeNotifierFrameLayout;
        return sizeNotifierFrameLayout;
    }
}
