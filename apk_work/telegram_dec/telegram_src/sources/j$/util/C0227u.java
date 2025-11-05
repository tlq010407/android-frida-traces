package j$.util;

import j$.util.function.Consumer;

/* renamed from: j$.util.u, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0227u implements j$.util.function.T {
    public final /* synthetic */ Consumer a;

    public /* synthetic */ C0227u(Consumer consumer) {
        this.a = consumer;
    }

    @Override // j$.util.function.T
    public final void accept(long j) {
        this.a.r(Long.valueOf(j));
    }

    @Override // j$.util.function.T
    public final /* synthetic */ j$.util.function.T f(j$.util.function.T t) {
        return j$.com.android.tools.r8.a.d(this, t);
    }
}
