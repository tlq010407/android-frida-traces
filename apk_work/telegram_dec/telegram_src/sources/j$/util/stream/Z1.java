package j$.util.stream;

import j$.util.function.Consumer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public abstract class Z1 implements InterfaceC0138d2 {
    protected final InterfaceC0142e2 a;

    public Z1(InterfaceC0142e2 interfaceC0142e2) {
        interfaceC0142e2.getClass();
        this.a = interfaceC0142e2;
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final /* synthetic */ void accept(double d) {
        AbstractC0203u0.b();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void accept(int i) {
        AbstractC0203u0.k();
        throw null;
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        j((Long) obj);
    }

    @Override // j$.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.function.T
    public final /* synthetic */ j$.util.function.T f(j$.util.function.T t) {
        return j$.com.android.tools.r8.a.d(this, t);
    }

    @Override // j$.util.stream.InterfaceC0138d2
    public final /* synthetic */ void j(Long l) {
        AbstractC0203u0.i(this, l);
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
}
