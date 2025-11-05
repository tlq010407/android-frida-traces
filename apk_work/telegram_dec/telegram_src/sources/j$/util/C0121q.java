package j$.util;

import j$.util.function.Consumer;

/* renamed from: j$.util.q, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0121q implements j$.util.function.E {
    public final /* synthetic */ Consumer a;

    public /* synthetic */ C0121q(Consumer consumer) {
        this.a = consumer;
    }

    @Override // j$.util.function.E
    public final void accept(int i) {
        this.a.r(Integer.valueOf(i));
    }

    @Override // j$.util.function.E
    public final /* synthetic */ j$.util.function.E l(j$.util.function.E e) {
        return j$.com.android.tools.r8.a.c(this, e);
    }
}
