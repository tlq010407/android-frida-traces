package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.C0102q;
import j$.util.function.Consumer;
import j$.util.function.IntFunction;
import j$.util.function.InterfaceC0098m;
import j$.util.function.Predicate;
import org.telegram.messenger.LiteMode;

/* renamed from: j$.util.stream.u0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public abstract /* synthetic */ class AbstractC0203u0 implements w3 {
    private static final Y0 a = new Y0();
    private static final C0 b = new W0();
    private static final E0 c = new X0();
    private static final A0 d = new V0();
    private static final int[] e = new int[0];
    private static final long[] f = new long[0];
    private static final double[] g = new double[0];

    AbstractC0203u0(S2 s2) {
    }

    static InterfaceC0219y0 D(long j, IntFunction intFunction) {
        return (j < 0 || j >= 2147483639) ? new C0196s1() : new C0125a1(j, intFunction);
    }

    public static G0 E(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long jL0 = abstractC0127b.l0(spliterator);
        if (jL0 < 0 || !spliterator.hasCharacteristics(LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM)) {
            G0 g0 = (G0) new L0(spliterator, intFunction, abstractC0127b).invoke();
            return z ? N(g0, intFunction) : g0;
        }
        if (jL0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jL0);
        new C0189q1(spliterator, abstractC0127b, objArr).invoke();
        return new J0(objArr);
    }

    public static A0 F(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z) {
        long jL0 = abstractC0127b.l0(spliterator);
        if (jL0 < 0 || !spliterator.hasCharacteristics(LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM)) {
            A0 a0 = (A0) new L0(0, spliterator, abstractC0127b).invoke();
            return z ? O(a0) : a0;
        }
        if (jL0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) jL0];
        new C0177n1(spliterator, abstractC0127b, dArr).invoke();
        return new S0(dArr);
    }

    public static C0 G(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z) {
        long jL0 = abstractC0127b.l0(spliterator);
        if (jL0 < 0 || !spliterator.hasCharacteristics(LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM)) {
            C0 c0 = (C0) new L0(1, spliterator, abstractC0127b).invoke();
            return z ? P(c0) : c0;
        }
        if (jL0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) jL0];
        new C0181o1(spliterator, abstractC0127b, iArr).invoke();
        return new C0129b1(iArr);
    }

    public static E0 H(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z) {
        long jL0 = abstractC0127b.l0(spliterator);
        if (jL0 < 0 || !spliterator.hasCharacteristics(LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM)) {
            E0 e0 = (E0) new L0(2, spliterator, abstractC0127b).invoke();
            return z ? Q(e0) : e0;
        }
        if (jL0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) jL0];
        new C0185p1(spliterator, abstractC0127b, jArr).invoke();
        return new C0165k1(jArr);
    }

    static I0 I(S2 s2, G0 g0, G0 g02) {
        int i = H0.a[s2.ordinal()];
        if (i == 1) {
            return new R0(g0, g02);
        }
        if (i == 2) {
            return new O0((C0) g0, (C0) g02);
        }
        if (i == 3) {
            return new P0((E0) g0, (E0) g02);
        }
        if (i == 4) {
            return new N0((A0) g0, (A0) g02);
        }
        throw new IllegalStateException("Unknown shape " + s2);
    }

    static InterfaceC0207v0 J(long j) {
        return (j < 0 || j >= 2147483639) ? new U0() : new T0(j);
    }

    public static E K(j$.util.D d2) {
        return new C0222z(d2, R2.i(d2));
    }

    static Z0 L(S2 s2) {
        G0 g0;
        int i = H0.a[s2.ordinal()];
        if (i == 1) {
            return a;
        }
        if (i == 2) {
            g0 = b;
        } else if (i == 3) {
            g0 = c;
        } else {
            if (i != 4) {
                throw new IllegalStateException("Unknown shape " + s2);
            }
            g0 = d;
        }
        return (Z0) g0;
    }

    private static int M(long j) {
        return (j != -1 ? R2.u : 0) | R2.t;
    }

    public static G0 N(G0 g0, IntFunction intFunction) {
        if (g0.p() <= 0) {
            return g0;
        }
        long jCount = g0.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jCount);
        new C0204u1(g0, objArr, 1).invoke();
        return new J0(objArr);
    }

    public static A0 O(A0 a0) {
        if (a0.p() <= 0) {
            return a0;
        }
        long jCount = a0.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) jCount];
        new C0200t1(a0, dArr).invoke();
        return new S0(dArr);
    }

    public static C0 P(C0 c0) {
        if (c0.p() <= 0) {
            return c0;
        }
        long jCount = c0.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) jCount];
        new C0200t1(c0, iArr).invoke();
        return new C0129b1(iArr);
    }

    public static E0 Q(E0 e0) {
        if (e0.p() <= 0) {
            return e0;
        }
        long jCount = e0.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) jCount];
        new C0200t1(e0, jArr).invoke();
        return new C0165k1(jArr);
    }

    static InterfaceC0211w0 R(long j) {
        return (j < 0 || j >= 2147483639) ? new C0137d1() : new C0133c1(j);
    }

    public static IntStream S(j$.util.G g2) {
        return new Z(g2, R2.i(g2));
    }

    static InterfaceC0215x0 T(long j) {
        return (j < 0 || j >= 2147483639) ? new C0173m1() : new C0169l1(j);
    }

    public static LongStream U(j$.util.J j) {
        return new C0148g0(j, R2.i(j));
    }

    public static E V(AbstractC0127b abstractC0127b, long j, long j2) {
        if (j >= 0) {
            return new C0174m2(abstractC0127b, M(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static C0195s0 W(C0102q c0102q, EnumC0191r0 enumC0191r0) {
        c0102q.getClass();
        enumC0191r0.getClass();
        return new C0195s0(S2.DOUBLE_VALUE, enumC0191r0, new C0168l0(2, enumC0191r0, c0102q));
    }

    public static IntStream X(AbstractC0127b abstractC0127b, long j, long j2) {
        if (j >= 0) {
            return new C0158i2(abstractC0127b, M(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static C0195s0 Y(j$.util.function.G g2, EnumC0191r0 enumC0191r0) {
        g2.getClass();
        enumC0191r0.getClass();
        return new C0195s0(S2.INT_VALUE, enumC0191r0, new C0168l0(1, enumC0191r0, g2));
    }

    public static LongStream Z(AbstractC0127b abstractC0127b, long j, long j2) {
        if (j >= 0) {
            return new C0166k2(abstractC0127b, M(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static C0195s0 a0(j$.util.function.W w, EnumC0191r0 enumC0191r0) {
        w.getClass();
        enumC0191r0.getClass();
        return new C0195s0(S2.LONG_VALUE, enumC0191r0, new C0168l0(0, enumC0191r0, w));
    }

    public static void b() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static C0195s0 b0(Predicate predicate, EnumC0191r0 enumC0191r0) {
        predicate.getClass();
        enumC0191r0.getClass();
        return new C0195s0(S2.REFERENCE, enumC0191r0, new C0168l0(3, enumC0191r0, predicate));
    }

    public static Stream c0(AbstractC0127b abstractC0127b, long j, long j2) {
        if (j >= 0) {
            return new C0150g2(abstractC0127b, M(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static void e(InterfaceC0130b2 interfaceC0130b2, Double d2) {
        if (z3.a) {
            z3.a(interfaceC0130b2.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        }
        interfaceC0130b2.accept(d2.doubleValue());
    }

    public static Stream e0(Spliterator spliterator, boolean z) {
        spliterator.getClass();
        return new U1(spliterator, R2.i(spliterator), z);
    }

    public static void g(InterfaceC0134c2 interfaceC0134c2, Integer num) {
        if (z3.a) {
            z3.a(interfaceC0134c2.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        }
        interfaceC0134c2.accept(num.intValue());
    }

    public static void i(InterfaceC0138d2 interfaceC0138d2, Long l) {
        if (z3.a) {
            z3.a(interfaceC0138d2.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        }
        interfaceC0138d2.accept(l.longValue());
    }

    public static void k() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static void l() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static Object[] m(F0 f0, IntFunction intFunction) {
        if (z3.a) {
            z3.a(f0.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        }
        if (f0.count() >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) f0.count());
        f0.i(objArr, 0);
        return objArr;
    }

    public static void n(A0 a0, Double[] dArr, int i) {
        if (z3.a) {
            z3.a(a0.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) a0.e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    public static void o(C0 c0, Integer[] numArr, int i) {
        if (z3.a) {
            z3.a(c0.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) c0.e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    public static void p(E0 e0, Long[] lArr, int i) {
        if (z3.a) {
            z3.a(e0.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) e0.e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    public static void q(A0 a0, Consumer consumer) {
        if (consumer instanceof InterfaceC0098m) {
            a0.g((InterfaceC0098m) consumer);
        } else {
            if (z3.a) {
                z3.a(a0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.D) a0.spliterator()).a(consumer);
        }
    }

    public static void r(C0 c0, Consumer consumer) {
        if (consumer instanceof j$.util.function.E) {
            c0.g((j$.util.function.E) consumer);
        } else {
            if (z3.a) {
                z3.a(c0.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.G) c0.spliterator()).a(consumer);
        }
    }

    public static void s(E0 e0, Consumer consumer) {
        if (consumer instanceof j$.util.function.T) {
            e0.g((j$.util.function.T) consumer);
        } else {
            if (z3.a) {
                z3.a(e0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.J) e0.spliterator()).a(consumer);
        }
    }

    public static A0 t(A0 a0, long j, long j2) {
        if (j == 0 && j2 == a0.count()) {
            return a0;
        }
        long j3 = j2 - j;
        j$.util.D d2 = (j$.util.D) a0.spliterator();
        InterfaceC0207v0 interfaceC0207v0J = J(j3);
        interfaceC0207v0J.n(j3);
        for (int i = 0; i < j && d2.p(new C0223z0(0)); i++) {
        }
        for (int i2 = 0; i2 < j3 && d2.p(interfaceC0207v0J); i2++) {
        }
        interfaceC0207v0J.m();
        return interfaceC0207v0J.b();
    }

    public static C0 u(C0 c0, long j, long j2) {
        if (j == 0 && j2 == c0.count()) {
            return c0;
        }
        long j3 = j2 - j;
        j$.util.G g2 = (j$.util.G) c0.spliterator();
        InterfaceC0211w0 interfaceC0211w0R = R(j3);
        interfaceC0211w0R.n(j3);
        for (int i = 0; i < j && g2.p(new B0(0)); i++) {
        }
        for (int i2 = 0; i2 < j3 && g2.p(interfaceC0211w0R); i2++) {
        }
        interfaceC0211w0R.m();
        return interfaceC0211w0R.b();
    }

    public static E0 v(E0 e0, long j, long j2) {
        if (j == 0 && j2 == e0.count()) {
            return e0;
        }
        long j3 = j2 - j;
        j$.util.J j4 = (j$.util.J) e0.spliterator();
        InterfaceC0215x0 interfaceC0215x0T = T(j3);
        interfaceC0215x0T.n(j3);
        for (int i = 0; i < j && j4.p(new D0(0)); i++) {
        }
        for (int i2 = 0; i2 < j3 && j4.p(interfaceC0215x0T); i2++) {
        }
        interfaceC0215x0T.m();
        return interfaceC0215x0T.b();
    }

    public static G0 w(G0 g0, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == g0.count()) {
            return g0;
        }
        Spliterator spliterator = g0.spliterator();
        long j3 = j2 - j;
        InterfaceC0219y0 interfaceC0219y0D = D(j3, intFunction);
        interfaceC0219y0D.n(j3);
        for (int i = 0; i < j && spliterator.s(new C0136d0(5)); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.s(interfaceC0219y0D); i2++) {
        }
        interfaceC0219y0D.m();
        return interfaceC0219y0D.b();
    }

    static long x(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    static Spliterator y(S2 s2, Spliterator spliterator, long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        long j4 = j3 >= 0 ? j3 : Long.MAX_VALUE;
        int i = AbstractC0178n2.a[s2.ordinal()];
        if (i == 1) {
            return new l3(spliterator, j, j4);
        }
        if (i == 2) {
            return new i3((j$.util.G) spliterator, j, j4);
        }
        if (i == 3) {
            return new j3((j$.util.J) spliterator, j, j4);
        }
        if (i == 4) {
            return new h3((j$.util.D) spliterator, j, j4);
        }
        throw new IllegalStateException("Unknown shape " + s2);
    }

    static long z(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    @Override // j$.util.stream.w3
    public Object a(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        O1 o1D0 = d0();
        abstractC0127b.getClass();
        abstractC0127b.f0(spliterator, abstractC0127b.B0(o1D0));
        return o1D0.get();
    }

    @Override // j$.util.stream.w3
    public Object c(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        return ((O1) new Q1(this, abstractC0127b, spliterator).invoke()).get();
    }

    @Override // j$.util.stream.w3
    public /* synthetic */ int d() {
        return 0;
    }

    public abstract O1 d0();
}
