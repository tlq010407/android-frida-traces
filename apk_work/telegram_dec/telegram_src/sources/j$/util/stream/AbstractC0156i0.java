package j$.util.stream;

import j$.util.C0113i;
import j$.util.C0114j;
import j$.util.C0116l;
import j$.util.InterfaceC0230x;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.function.BiConsumer;
import j$.util.function.IntFunction;
import j$.util.function.LongFunction;
import j$.util.function.Supplier;

/* renamed from: j$.util.stream.i0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class AbstractC0156i0 extends AbstractC0127b implements LongStream {
    AbstractC0156i0(Spliterator spliterator, int i) {
        super(spliterator, i, false);
    }

    AbstractC0156i0(AbstractC0127b abstractC0127b, int i) {
        super(abstractC0127b, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j$.util.J E0(Spliterator spliterator) {
        if (spliterator instanceof j$.util.J) {
            return (j$.util.J) spliterator;
        }
        if (!z3.a) {
            throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
        }
        z3.a(AbstractC0127b.class, "using LongStream.adapt(Spliterator<Long> s)");
        throw null;
    }

    @Override // j$.util.stream.LongStream
    public final boolean C(j$.util.function.W w) {
        return ((Boolean) i0(AbstractC0203u0.a0(w, EnumC0191r0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final boolean E(j$.util.function.W w) {
        return ((Boolean) i0(AbstractC0203u0.a0(w, EnumC0191r0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final LongStream K(j$.util.function.W w) {
        w.getClass();
        return new C0214x(this, R2.t, w, 4);
    }

    public void T(j$.util.function.T t) {
        t.getClass();
        i0(new O(t, true));
    }

    @Override // j$.util.stream.LongStream
    public final Object W(Supplier supplier, j$.util.function.l0 l0Var, BiConsumer biConsumer) {
        C0194s c0194s = new C0194s(biConsumer, 2);
        supplier.getClass();
        l0Var.getClass();
        return i0(new C0208v1(S2.LONG_VALUE, c0194s, l0Var, supplier, 0));
    }

    @Override // j$.util.stream.LongStream
    public final E asDoubleStream() {
        return new C0218y(this, R2.p | R2.n, 2);
    }

    @Override // j$.util.stream.LongStream
    public final C0114j average() {
        long[] jArr = (long[]) W(new C0136d0(1), new C0136d0(2), new C0136d0(3));
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

    @Override // j$.util.stream.LongStream
    public final Stream boxed() {
        return mapToObj(new r(29));
    }

    public void c(j$.util.function.T t) {
        t.getClass();
        i0(new O(t, false));
    }

    @Override // j$.util.stream.LongStream
    public final long count() {
        return ((AbstractC0156i0) t(new C0136d0(0))).sum();
    }

    @Override // j$.util.stream.LongStream
    public final LongStream distinct() {
        return ((W1) boxed()).distinct().mapToLong(new r(26));
    }

    @Override // j$.util.stream.LongStream
    public final C0116l findAny() {
        return (C0116l) i0(new F(false, S2.LONG_VALUE, C0116l.a(), new r(8), new C0167l(9)));
    }

    @Override // j$.util.stream.LongStream
    public final C0116l findFirst() {
        return (C0116l) i0(new F(true, S2.LONG_VALUE, C0116l.a(), new r(8), new C0167l(9)));
    }

    @Override // j$.util.stream.LongStream
    public final C0116l g(j$.util.function.O o) {
        o.getClass();
        return (C0116l) i0(new C0224z1(S2.LONG_VALUE, o, 3));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final InterfaceC0230x iterator() {
        return Spliterators.h(spliterator());
    }

    @Override // j$.util.stream.AbstractC0127b
    final G0 k0(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC0203u0.H(abstractC0127b, spliterator, z);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream limit(long j) {
        if (j >= 0) {
            return AbstractC0203u0.Z(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.LongStream
    public final LongStream m(j$.util.function.T t) {
        t.getClass();
        return new C0214x(this, t);
    }

    @Override // j$.util.stream.AbstractC0127b
    final void m0(Spliterator spliterator, InterfaceC0142e2 interfaceC0142e2) {
        j$.util.function.T c0132c0;
        j$.util.J jE0 = E0(spliterator);
        if (interfaceC0142e2 instanceof j$.util.function.T) {
            c0132c0 = (j$.util.function.T) interfaceC0142e2;
        } else {
            if (z3.a) {
                z3.a(AbstractC0127b.class, "using LongStream.adapt(Sink<Long> s)");
                throw null;
            }
            interfaceC0142e2.getClass();
            c0132c0 = new C0132c0(0, interfaceC0142e2);
        }
        while (!interfaceC0142e2.q() && jE0.p(c0132c0)) {
        }
    }

    @Override // j$.util.stream.LongStream
    public final Stream mapToObj(LongFunction longFunction) {
        longFunction.getClass();
        return new C0206v(this, R2.p | R2.n, longFunction, 2);
    }

    @Override // j$.util.stream.LongStream
    public final C0116l max() {
        return g(new C0136d0(4));
    }

    @Override // j$.util.stream.LongStream
    public final C0116l min() {
        return g(new r(25));
    }

    @Override // j$.util.stream.LongStream
    public final LongStream n(LongFunction longFunction) {
        return new C0214x(this, R2.p | R2.n | R2.t, longFunction, 3);
    }

    @Override // j$.util.stream.AbstractC0127b
    final S2 n0() {
        return S2.LONG_VALUE;
    }

    @Override // j$.util.stream.LongStream
    public final E p(j$.util.function.X x) {
        x.getClass();
        return new C0202u(this, R2.p | R2.n, x, 5);
    }

    @Override // j$.util.stream.LongStream
    public final boolean s(j$.util.function.W w) {
        return ((Boolean) i0(AbstractC0203u0.a0(w, EnumC0191r0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.AbstractC0127b
    final InterfaceC0219y0 s0(long j, IntFunction intFunction) {
        return AbstractC0203u0.T(j);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC0203u0.Z(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.LongStream
    public final LongStream sorted() {
        return new C0221y2(this);
    }

    @Override // j$.util.stream.AbstractC0127b, j$.util.stream.BaseStream, j$.util.stream.E
    public final j$.util.J spliterator() {
        return E0(super.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final long sum() {
        return v(0L, new r(24));
    }

    @Override // j$.util.stream.LongStream
    public final C0113i summaryStatistics() {
        return (C0113i) W(new C0167l(18), new r(23), new r(27));
    }

    @Override // j$.util.stream.LongStream
    public final LongStream t(j$.util.function.c0 c0Var) {
        c0Var.getClass();
        return new C0214x(this, R2.p | R2.n, c0Var, 2);
    }

    @Override // j$.util.stream.LongStream
    public final long[] toArray() {
        return (long[]) AbstractC0203u0.Q((E0) j0(new r(28))).e();
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !q0() ? this : new X(this, R2.r, 1);
    }

    @Override // j$.util.stream.LongStream
    public final long v(long j, j$.util.function.O o) {
        o.getClass();
        return ((Long) i0(new L1(S2.LONG_VALUE, o, j))).longValue();
    }

    @Override // j$.util.stream.LongStream
    public final IntStream y(j$.util.function.Y y) {
        y.getClass();
        return new C0210w(this, R2.p | R2.n, y, 5);
    }

    @Override // j$.util.stream.AbstractC0127b
    final Spliterator z0(AbstractC0127b abstractC0127b, Supplier supplier, boolean z) {
        return new g3(abstractC0127b, supplier, z);
    }
}
