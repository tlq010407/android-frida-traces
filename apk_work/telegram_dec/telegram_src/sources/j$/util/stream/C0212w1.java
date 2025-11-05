package j$.util.stream;

import j$.util.function.Consumer;
import j$.util.function.InterfaceC0091f;
import j$.util.function.Supplier;

/* renamed from: j$.util.stream.w1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0212w1 extends P1 implements O1, InterfaceC0138d2 {
    final /* synthetic */ Supplier b;
    final /* synthetic */ j$.util.function.l0 c;
    final /* synthetic */ InterfaceC0091f d;

    C0212w1(Supplier supplier, j$.util.function.l0 l0Var, InterfaceC0091f interfaceC0091f) {
        this.b = supplier;
        this.c = l0Var;
        this.d = interfaceC0091f;
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

    @Override // j$.util.stream.InterfaceC0142e2
    public final void accept(long j) {
        this.c.accept(this.a, j);
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

    @Override // j$.util.stream.O1
    public final void h(O1 o1) {
        this.a = this.d.apply(this.a, ((C0212w1) o1).a);
    }

    @Override // j$.util.stream.InterfaceC0138d2
    public final /* synthetic */ void j(Long l) {
        AbstractC0203u0.i(this, l);
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
}
