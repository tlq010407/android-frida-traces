package j$.util.stream;

import j$.util.function.Consumer;
import j$.util.function.InterfaceC0091f;
import j$.util.function.InterfaceC0098m;
import j$.util.function.Supplier;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class B1 extends P1 implements O1, InterfaceC0130b2 {
    final /* synthetic */ Supplier b;
    final /* synthetic */ j$.util.function.f0 c;
    final /* synthetic */ InterfaceC0091f d;

    B1(Supplier supplier, j$.util.function.f0 f0Var, InterfaceC0091f interfaceC0091f) {
        this.b = supplier;
        this.c = f0Var;
        this.d = interfaceC0091f;
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        this.c.accept(this.a, d);
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

    @Override // j$.util.stream.O1
    public final void h(O1 o1) {
        this.a = this.d.apply(this.a, ((B1) o1).a);
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void m() {
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        this.a = this.b.get();
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ boolean q() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0130b2
    public final /* synthetic */ void r(Double d) {
        AbstractC0203u0.e(this, d);
    }
}
