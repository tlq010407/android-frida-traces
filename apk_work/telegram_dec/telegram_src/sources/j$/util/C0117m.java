package j$.util;

import j$.util.function.Consumer;
import j$.util.function.InterfaceC0098m;

/* renamed from: j$.util.m, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0117m implements InterfaceC0098m {
    public final /* synthetic */ Consumer a;

    public /* synthetic */ C0117m(Consumer consumer) {
        this.a = consumer;
    }

    @Override // j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        this.a.r(Double.valueOf(d));
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }
}
