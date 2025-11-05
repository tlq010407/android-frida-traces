package org.telegram.tgnet;

import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface ResultCallback {

    /* renamed from: org.telegram.tgnet.ResultCallback$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$onError(ResultCallback resultCallback, Throwable th) {
        }

        public static void $default$onError(ResultCallback resultCallback, TLRPC.TL_error tL_error) {
        }
    }

    void onComplete(Object obj);

    void onError(TLRPC.TL_error tL_error);
}
