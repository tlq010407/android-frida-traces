package org.telegram.messenger.voip;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final /* synthetic */ class VoIPService$$ExternalSyntheticLambda102 implements Runnable {
    public final /* synthetic */ NativeInstance f$0;

    public /* synthetic */ VoIPService$$ExternalSyntheticLambda102(NativeInstance nativeInstance) {
        this.f$0 = nativeInstance;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.stopGroup();
    }
}
