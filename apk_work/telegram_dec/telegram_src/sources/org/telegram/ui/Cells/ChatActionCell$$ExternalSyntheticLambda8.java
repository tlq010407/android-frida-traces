package org.telegram.ui.Cells;

import org.telegram.ui.Components.RLottieDrawable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public final /* synthetic */ class ChatActionCell$$ExternalSyntheticLambda8 implements Runnable {
    public final /* synthetic */ RLottieDrawable f$0;

    public /* synthetic */ ChatActionCell$$ExternalSyntheticLambda8(RLottieDrawable rLottieDrawable) {
        this.f$0 = rLottieDrawable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.restart();
    }
}
