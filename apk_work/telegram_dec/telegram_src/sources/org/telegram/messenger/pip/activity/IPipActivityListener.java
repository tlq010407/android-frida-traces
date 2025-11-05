package org.telegram.messenger.pip.activity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IPipActivityListener {

    /* renamed from: org.telegram.messenger.pip.activity.IPipActivityListener$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$onCompleteEnterToPip(IPipActivityListener iPipActivityListener) {
        }

        public static void $default$onCompleteExitFromPip(IPipActivityListener iPipActivityListener, boolean z) {
        }

        public static void $default$onStartEnterToPip(IPipActivityListener iPipActivityListener) {
        }

        public static void $default$onStartExitFromPip(IPipActivityListener iPipActivityListener, boolean z) {
        }
    }

    void onCompleteEnterToPip();

    void onCompleteExitFromPip(boolean z);

    void onStartEnterToPip();

    void onStartExitFromPip(boolean z);
}
