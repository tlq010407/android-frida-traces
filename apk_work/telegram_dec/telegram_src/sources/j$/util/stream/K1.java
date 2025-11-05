package j$.util.stream;

import j$.util.function.Consumer;
import j$.util.function.InterfaceC0091f;
import j$.util.function.Supplier;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class K1 extends P1 implements O1, InterfaceC0134c2 {
    final /* synthetic */ Supplier b;
    final /* synthetic */ j$.util.function.i0 c;
    final /* synthetic */ InterfaceC0091f d;

    K1(Supplier supplier, j$.util.function.i0 i0Var, InterfaceC0091f interfaceC0091f) {
        this.b = supplier;
        this.c = i0Var;
        this.d = interfaceC0091f;
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final /* synthetic */ void accept(double d) {
        AbstractC0203u0.b();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void accept(int i) {
        this.c.accept(this.a, i);
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

    @Override // j$.util.stream.O1
    public final void h(O1 o1) {
        this.a = this.d.apply(this.a, ((K1) o1).a);
    }

    @Override // j$.util.function.E
    public final /* synthetic */ j$.util.function.E l(j$.util.function.E e) {
        return j$.com.android.tools.r8.a.c(this, e);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void m() {
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        this.a = this.b.get();
    }

    @Override // j$.util.stream.InterfaceC0134c2
    public final /* synthetic */ void o(Integer num) {
        AbstractC0203u0.g(this, num);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ boolean q() {
        return false;
    }
}
