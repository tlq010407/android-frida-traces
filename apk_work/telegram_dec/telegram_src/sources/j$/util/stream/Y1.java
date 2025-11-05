package j$.util.stream;

import j$.util.function.Consumer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public abstract class Y1 implements InterfaceC0134c2 {
    protected final InterfaceC0142e2 a;

    public Y1(InterfaceC0142e2 interfaceC0142e2) {
        interfaceC0142e2.getClass();
        this.a = interfaceC0142e2;
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final /* synthetic */ void accept(double d) {
        AbstractC0203u0.b();
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
        o((Integer) obj);
    }

    @Override // j$.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.function.E
    public final /* synthetic */ j$.util.function.E l(j$.util.function.E e) {
        return j$.com.android.tools.r8.a.c(this, e);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public void m() {
        this.a.m();
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public void n(long j) {
        this.a.n(j);
    }

    @Override // j$.util.stream.InterfaceC0134c2
    public final /* synthetic */ void o(Integer num) {
        AbstractC0203u0.g(this, num);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public boolean q() {
        return this.a.q();
    }
}
