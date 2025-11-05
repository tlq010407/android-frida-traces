package org.telegram.ui;

import org.telegram.ui.Components.ScrimOptions;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda97 implements Runnable {
    public final /* synthetic */ ScrimOptions f$0;

    public /* synthetic */ ChatActivity$$ExternalSyntheticLambda97(ScrimOptions scrimOptions) {
        this.f$0 = scrimOptions;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.dismissFast();
    }
}
