package j$.util.stream;

import j$.util.function.Consumer;
import j$.util.function.InterfaceC0098m;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public abstract class X1 implements InterfaceC0130b2 {
    protected final InterfaceC0142e2 a;

    public X1(InterfaceC0142e2 interfaceC0142e2) {
        interfaceC0142e2.getClass();
        this.a = interfaceC0142e2;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void accept(int i) {
        AbstractC0203u0.k();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void accept(long j) {
        AbstractC0203u0.l();
        throw null;
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        r((Double) obj);
    }

    @Override // j$.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public void m() {
        this.a.m();
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public void n(long j) {
        this.a.n(j);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public boolean q() {
        return this.a.q();
    }

    @Override // j$.util.stream.InterfaceC0130b2
    public final /* synthetic */ void r(Double d) {
        AbstractC0203u0.e(this, d);
    }
}
