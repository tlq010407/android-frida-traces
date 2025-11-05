package j$.util.stream;

import j$.util.C0111g;
import j$.util.C0114j;
import j$.util.C0115k;
import j$.util.InterfaceC0226t;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.function.BiConsumer;
import j$.util.function.IntFunction;
import j$.util.function.Supplier;

/* renamed from: j$.util.stream.b0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class AbstractC0128b0 extends AbstractC0127b implements IntStream {
    AbstractC0128b0(Spliterator spliterator, int i) {
        super(spliterator, i, false);
    }

    AbstractC0128b0(AbstractC0127b abstractC0127b, int i) {
        super(abstractC0127b, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j$.util.G E0(Spliterator spliterator) {
        if (spliterator instanceof j$.util.G) {
            return (j$.util.G) spliterator;
        }
        if (!z3.a) {
            throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
        }
        z3.a(AbstractC0127b.class, "using IntStream.adapt(Spliterator<Integer> s)");
        throw null;
    }

    public void A(j$.util.function.E e) {
        e.getClass();
        i0(new N(e, true));
    }

    @Override // j$.util.stream.IntStream
    public final Stream B(IntFunction intFunction) {
        intFunction.getClass();
        return new C0206v(this, R2.p | R2.n, intFunction, 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream F(j$.util.function.L l) {
        l.getClass();
        return new C0210w(this, R2.p | R2.n, l, 2);
    }

    @Override // j$.util.stream.IntStream
    public final int H(int i, j$.util.function.A a) {
        a.getClass();
        return ((Integer) i0(new H1(S2.INT_VALUE, a, i))).intValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream I(IntFunction intFunction) {
        return new C0210w(this, R2.p | R2.n | R2.t, intFunction, 3);
    }

    public void J(j$.util.function.E e) {
        e.getClass();
        i0(new N(e, false));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream O(j$.util.function.G g) {
        g.getClass();
        return new C0210w(this, R2.t, g, 4);
    }

    @Override // j$.util.stream.IntStream
    public final boolean R(j$.util.function.G g) {
        return ((Boolean) i0(AbstractC0203u0.Y(g, EnumC0191r0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final C0115k U(j$.util.function.A a) {
        a.getClass();
        return (C0115k) i0(new C0224z1(S2.INT_VALUE, a, 2));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream V(j$.util.function.E e) {
        e.getClass();
        return new C0210w(this, e);
    }

    @Override // j$.util.stream.IntStream
    public final boolean X(j$.util.function.G g) {
        return ((Boolean) i0(AbstractC0203u0.Y(g, EnumC0191r0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean Y(j$.util.function.G g) {
        return ((Boolean) i0(AbstractC0203u0.Y(g, EnumC0191r0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final E asDoubleStream() {
        return new C0218y(this, R2.p | R2.n, 1);
    }

    @Override // j$.util.stream.IntStream
    public final LongStream asLongStream() {
        return new X(this, R2.p | R2.n, 0);
    }

    @Override // j$.util.stream.IntStream
    public final C0114j average() {
        long[] jArr = (long[]) b0(new r(20), new r(21), new r(22));
        long j = jArr[0];
        if (j <= 0) {
            return C0114j.a();
        }
        double d = jArr[1];
        double d2 = j;
        Double.isNaN(d);
        Double.isNaN(d2);
        return C0114j.d(d / d2);
    }

    @Override // j$.util.stream.IntStream
    public final Object b0(Supplier supplier, j$.util.function.i0 i0Var, BiConsumer biConsumer) {
        C0194s c0194s = new C0194s(biConsumer, 1);
        supplier.getClass();
        i0Var.getClass();
        return i0(new C0208v1(S2.INT_VALUE, c0194s, i0Var, supplier, 4));
    }

    @Override // j$.util.stream.IntStream
    public final Stream boxed() {
        return B(new r(14));
    }

    @Override // j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC0156i0) f(new r(13))).sum();
    }

    @Override // j$.util.stream.IntStream
    public final E d(j$.util.function.H h) {
        h.getClass();
        return new C0202u(this, R2.p | R2.n, h, 4);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((W1) ((W1) boxed()).distinct()).k(new r(12));
    }

    @Override // j$.util.stream.IntStream
    public final LongStream f(j$.util.function.K k) {
        k.getClass();
        return new C0214x(this, R2.p | R2.n, k, 1);
    }

    @Override // j$.util.stream.IntStream
    public final C0115k findAny() {
        return (C0115k) i0(new F(false, S2.INT_VALUE, C0115k.a(), new r(9), new C0167l(10)));
    }

    @Override // j$.util.stream.IntStream
    public final C0115k findFirst() {
        return (C0115k) i0(new F(true, S2.INT_VALUE, C0115k.a(), new r(9), new C0167l(10)));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final InterfaceC0226t iterator() {
        return Spliterators.g(spliterator());
    }

    @Override // j$.util.stream.AbstractC0127b
    final G0 k0(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC0203u0.G(abstractC0127b, spliterator, z);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC0203u0.X(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.AbstractC0127b
    final void m0(Spliterator spliterator, InterfaceC0142e2 interfaceC0142e2) {
        j$.util.function.E u;
        j$.util.G gE0 = E0(spliterator);
        if (interfaceC0142e2 instanceof j$.util.function.E) {
            u = (j$.util.function.E) interfaceC0142e2;
        } else {
            if (z3.a) {
                z3.a(AbstractC0127b.class, "using IntStream.adapt(Sink<Integer> s)");
                throw null;
            }
            interfaceC0142e2.getClass();
            u = new U(0, interfaceC0142e2);
        }
        while (!interfaceC0142e2.q() && gE0.p(u)) {
        }
    }

    @Override // j$.util.stream.IntStream
    public final C0115k max() {
        return U(new r(19));
    }

    @Override // j$.util.stream.IntStream
    public final C0115k min() {
        return U(new r(15));
    }

    @Override // j$.util.stream.AbstractC0127b
    final S2 n0() {
        return S2.INT_VALUE;
    }

    @Override // j$.util.stream.AbstractC0127b
    final InterfaceC0219y0 s0(long j, IntFunction intFunction) {
        return AbstractC0203u0.R(j);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC0203u0.X(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C0217x2(this);
    }

    @Override // j$.util.stream.AbstractC0127b, j$.util.stream.BaseStream, j$.util.stream.E
    public final j$.util.G spliterator() {
        return E0(super.spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final int sum() {
        return H(0, new r(18));
    }

    @Override // j$.util.stream.IntStream
    public final C0111g summaryStatistics() {
        return (C0111g) b0(new C0167l(17), new r(16), new r(17));
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC0203u0.P((C0) j0(new r(11))).e();
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !q0() ? this : new Y(this, R2.r);
    }

    @Override // j$.util.stream.AbstractC0127b
    final Spliterator z0(AbstractC0127b abstractC0127b, Supplier supplier, boolean z) {
        return new e3(abstractC0127b, supplier, z);
    }
}
