package org.telegram.messenger.pip.activity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface IPipActivityAnimationListener {

    /* renamed from: org.telegram.messenger.pip.activity.IPipActivityAnimationListener$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$onEnterAnimationEnd(IPipActivityAnimationListener iPipActivityAnimationListener, long j) {
        }

        public static void $default$onEnterAnimationStart(IPipActivityAnimationListener iPipActivityAnimationListener, long j) {
        }

        public static void $default$onLeaveAnimationEnd(IPipActivityAnimationListener iPipActivityAnimationListener, long j) {
        }

        public static void $default$onLeaveAnimationStart(IPipActivityAnimationListener iPipActivityAnimationListener, long j) {
        }
    }

    void onEnterAnimationEnd(long j);

    void onEnterAnimationStart(long j);

    void onLeaveAnimationEnd(long j);

    void onLeaveAnimationStart(long j);

    void onTransitionAnimationFrame();

    void onTransitionAnimationProgress(float f);
}
