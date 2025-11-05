package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import j$.util.function.IntFunction;
import j$.util.function.InterfaceC0098m;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class U0 extends H2 implements A0, InterfaceC0207v0 {
    U0() {
    }

    @Override // j$.util.stream.H2
    /* renamed from: A */
    public final j$.util.D spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.G0
    /* renamed from: B, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void i(Double[] dArr, int i) {
        AbstractC0203u0.n(this, dArr, i);
    }

    @Override // j$.util.stream.F0, j$.util.stream.G0
    public final F0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.G0
    public final /* bridge */ /* synthetic */ G0 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.H2, j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        super.accept(d);
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

    @Override // j$.util.stream.InterfaceC0207v0, j$.util.stream.InterfaceC0219y0
    public final A0 b() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC0219y0
    public final G0 b() {
        return this;
    }

    @Override // j$.util.stream.N2, j$.util.stream.F0
    public final void d(Object obj, int i) {
        super.d((double[]) obj, i);
    }

    @Override // j$.util.stream.N2, j$.util.stream.F0
    public final Object e() {
        return (double[]) super.e();
    }

    @Override // j$.util.stream.N2, j$.util.stream.F0
    public final void g(Object obj) {
        super.g((InterfaceC0098m) obj);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void m() {
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        clear();
        x(j);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ int p() {
        return 0;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ boolean q() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0130b2
    public final /* synthetic */ void r(Double d) {
        AbstractC0203u0.e(this, d);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ Object[] s(IntFunction intFunction) {
        return AbstractC0203u0.m(this, intFunction);
    }

    @Override // j$.util.stream.H2, j$.util.stream.N2, java.lang.Iterable
    public final j$.util.M spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.H2, j$.util.stream.N2, java.lang.Iterable
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ G0 t(long j, long j2, IntFunction intFunction) {
        return AbstractC0203u0.t(this, j, j2);
    }
}
