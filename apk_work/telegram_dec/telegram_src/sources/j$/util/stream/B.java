package j$.util.stream;

import j$.util.C0085f;
import j$.util.C0114j;
import j$.util.InterfaceC0120p;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.function.BiConsumer;
import j$.util.function.C0102q;
import j$.util.function.C0106v;
import j$.util.function.IntFunction;
import j$.util.function.InterfaceC0094i;
import j$.util.function.InterfaceC0098m;
import j$.util.function.InterfaceC0101p;
import j$.util.function.InterfaceC0105u;
import j$.util.function.Supplier;
import java.util.Set;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class B extends AbstractC0127b implements E {
    B(Spliterator spliterator, int i) {
        super(spliterator, i, false);
    }

    B(AbstractC0127b abstractC0127b, int i) {
        super(abstractC0127b, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j$.util.D E0(Spliterator spliterator) {
        if (spliterator instanceof j$.util.D) {
            return (j$.util.D) spliterator;
        }
        if (!z3.a) {
            throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
        }
        z3.a(AbstractC0127b.class, "using DoubleStream.adapt(Spliterator<Double> s)");
        throw null;
    }

    @Override // j$.util.stream.E
    public final double D(double d, InterfaceC0094i interfaceC0094i) {
        interfaceC0094i.getClass();
        return ((Double) i0(new C0216x1(S2.DOUBLE_VALUE, interfaceC0094i, d))).doubleValue();
    }

    @Override // j$.util.stream.E
    public final Stream G(InterfaceC0101p interfaceC0101p) {
        interfaceC0101p.getClass();
        return new C0206v(this, R2.p | R2.n, interfaceC0101p, 0);
    }

    @Override // j$.util.stream.E
    public final E L(C0106v c0106v) {
        c0106v.getClass();
        return new C0202u(this, R2.p | R2.n, c0106v, 0);
    }

    @Override // j$.util.stream.E
    public final IntStream Q(j$.util.function.r rVar) {
        rVar.getClass();
        return new C0210w(this, R2.p | R2.n, rVar, 0);
    }

    @Override // j$.util.stream.E
    public final E S(C0102q c0102q) {
        c0102q.getClass();
        return new C0202u(this, R2.t, c0102q, 2);
    }

    @Override // j$.util.stream.E
    public final E a(InterfaceC0098m interfaceC0098m) {
        interfaceC0098m.getClass();
        return new C0202u(this, interfaceC0098m);
    }

    @Override // j$.util.stream.E
    public final boolean a0(C0102q c0102q) {
        return ((Boolean) i0(AbstractC0203u0.W(c0102q, EnumC0191r0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.E
    public final C0114j average() {
        double[] dArr = (double[]) z(new C0167l(27), new C0167l(5), new C0167l(6));
        if (dArr[2] <= 0.0d) {
            return C0114j.a();
        }
        Set set = Collectors.a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        if (Double.isNaN(d) && Double.isInfinite(d2)) {
            d = d2;
        }
        return C0114j.d(d / dArr[2]);
    }

    @Override // j$.util.stream.E
    public final Stream boxed() {
        return G(new r(0));
    }

    @Override // j$.util.stream.E
    public void c0(InterfaceC0098m interfaceC0098m) {
        interfaceC0098m.getClass();
        i0(new M(interfaceC0098m, true));
    }

    @Override // j$.util.stream.E
    public final long count() {
        return ((AbstractC0156i0) r(new r(1))).sum();
    }

    @Override // j$.util.stream.E
    public final boolean d0(C0102q c0102q) {
        return ((Boolean) i0(AbstractC0203u0.W(c0102q, EnumC0191r0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.E
    public final E distinct() {
        return ((W1) ((W1) boxed()).distinct()).Z(new r(2));
    }

    @Override // j$.util.stream.E
    public final C0114j findAny() {
        return (C0114j) i0(new F(false, S2.DOUBLE_VALUE, C0114j.a(), new r(7), new C0167l(8)));
    }

    @Override // j$.util.stream.E
    public final C0114j findFirst() {
        return (C0114j) i0(new F(true, S2.DOUBLE_VALUE, C0114j.a(), new r(7), new C0167l(8)));
    }

    @Override // j$.util.stream.E
    public void i(InterfaceC0098m interfaceC0098m) {
        interfaceC0098m.getClass();
        i0(new M(interfaceC0098m, false));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final InterfaceC0120p iterator() {
        return Spliterators.f(spliterator());
    }

    @Override // j$.util.stream.E
    public final boolean j(C0102q c0102q) {
        return ((Boolean) i0(AbstractC0203u0.W(c0102q, EnumC0191r0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.AbstractC0127b
    final G0 k0(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC0203u0.F(abstractC0127b, spliterator, z);
    }

    @Override // j$.util.stream.E
    public final E limit(long j) {
        if (j >= 0) {
            return AbstractC0203u0.V(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.AbstractC0127b
    final void m0(Spliterator spliterator, InterfaceC0142e2 interfaceC0142e2) {
        InterfaceC0098m c0187q;
        j$.util.D dE0 = E0(spliterator);
        if (interfaceC0142e2 instanceof InterfaceC0098m) {
            c0187q = (InterfaceC0098m) interfaceC0142e2;
        } else {
            if (z3.a) {
                z3.a(AbstractC0127b.class, "using DoubleStream.adapt(Sink<Double> s)");
                throw null;
            }
            interfaceC0142e2.getClass();
            c0187q = new C0187q(0, interfaceC0142e2);
        }
        while (!interfaceC0142e2.q() && dE0.p(c0187q)) {
        }
    }

    @Override // j$.util.stream.E
    public final C0114j max() {
        return x(new r(4));
    }

    @Override // j$.util.stream.E
    public final C0114j min() {
        return x(new C0167l(26));
    }

    @Override // j$.util.stream.AbstractC0127b
    final S2 n0() {
        return S2.DOUBLE_VALUE;
    }

    @Override // j$.util.stream.E
    public final E q(InterfaceC0101p interfaceC0101p) {
        return new C0202u(this, R2.p | R2.n | R2.t, interfaceC0101p, 1);
    }

    @Override // j$.util.stream.E
    public final LongStream r(InterfaceC0105u interfaceC0105u) {
        interfaceC0105u.getClass();
        return new C0214x(this, R2.p | R2.n, interfaceC0105u, 0);
    }

    @Override // j$.util.stream.AbstractC0127b
    final InterfaceC0219y0 s0(long j, IntFunction intFunction) {
        return AbstractC0203u0.J(j);
    }

    @Override // j$.util.stream.E
    public final E skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC0203u0.V(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.E
    public final E sorted() {
        return new C0213w2(this);
    }

    @Override // j$.util.stream.AbstractC0127b, j$.util.stream.BaseStream, j$.util.stream.E
    public final j$.util.D spliterator() {
        return E0(super.spliterator());
    }

    @Override // j$.util.stream.E
    public final double sum() {
        double[] dArr = (double[]) z(new r(5), new C0167l(3), new C0167l(4));
        Set set = Collectors.a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    @Override // j$.util.stream.E
    public final C0085f summaryStatistics() {
        return (C0085f) z(new C0167l(15), new C0167l(28), new C0167l(29));
    }

    @Override // j$.util.stream.E
    public final double[] toArray() {
        return (double[]) AbstractC0203u0.O((A0) j0(new r(3))).e();
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !q0() ? this : new C0218y(this, R2.r, 0);
    }

    @Override // j$.util.stream.E
    public final C0114j x(InterfaceC0094i interfaceC0094i) {
        interfaceC0094i.getClass();
        return (C0114j) i0(new C0224z1(S2.DOUBLE_VALUE, interfaceC0094i, 0));
    }

    @Override // j$.util.stream.E
    public final Object z(Supplier supplier, j$.util.function.f0 f0Var, BiConsumer biConsumer) {
        C0194s c0194s = new C0194s(biConsumer, 0);
        supplier.getClass();
        f0Var.getClass();
        return i0(new C0208v1(S2.DOUBLE_VALUE, c0194s, f0Var, supplier, 1));
    }

    @Override // j$.util.stream.AbstractC0127b
    final Spliterator z0(AbstractC0127b abstractC0127b, Supplier supplier, boolean z) {
        return new c3(abstractC0127b, supplier, z);
    }
}
