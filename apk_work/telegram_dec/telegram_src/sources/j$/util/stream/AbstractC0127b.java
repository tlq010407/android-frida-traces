package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.IntFunction;
import j$.util.function.Supplier;

/* renamed from: j$.util.stream.b, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class AbstractC0127b implements BaseStream {
    private final AbstractC0127b a;
    private final AbstractC0127b b;
    protected final int c;
    private AbstractC0127b d;
    private int e;
    private int f;
    private Spliterator g;
    private boolean h;
    private boolean i;
    private Runnable j;
    private boolean k;

    AbstractC0127b() {
    }

    AbstractC0127b(Spliterator spliterator, int i, boolean z) {
        this();
        this.b = null;
        this.g = spliterator;
        this.a = this;
        int i2 = R2.g & i;
        this.c = i2;
        this.f = ((i2 << 1) ^ (-1)) & R2.l;
        this.e = 0;
        this.k = z;
    }

    AbstractC0127b(AbstractC0127b abstractC0127b, int i) {
        this();
        if (abstractC0127b.h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC0127b.h = true;
        abstractC0127b.d = this;
        this.b = abstractC0127b;
        this.c = R2.h & i;
        this.f = R2.f(i, abstractC0127b.f);
        AbstractC0127b abstractC0127b2 = abstractC0127b.a;
        this.a = abstractC0127b2;
        if (v0()) {
            abstractC0127b2.i = true;
        }
        this.e = abstractC0127b.e + 1;
    }

    private Spliterator x0(int i) {
        int i2;
        int i3;
        AbstractC0127b abstractC0127b = this.a;
        Spliterator spliteratorU0 = abstractC0127b.g;
        if (spliteratorU0 == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        abstractC0127b.g = null;
        if (abstractC0127b.k && abstractC0127b.i) {
            AbstractC0127b abstractC0127b2 = abstractC0127b.d;
            int i4 = 1;
            while (abstractC0127b != this) {
                int i5 = abstractC0127b2.c;
                if (abstractC0127b2.v0()) {
                    if (R2.SHORT_CIRCUIT.j(i5)) {
                        i5 &= R2.u ^ (-1);
                    }
                    spliteratorU0 = abstractC0127b2.u0(abstractC0127b, spliteratorU0);
                    if (spliteratorU0.hasCharacteristics(64)) {
                        i2 = (R2.t ^ (-1)) & i5;
                        i3 = R2.s;
                    } else {
                        i2 = (R2.s ^ (-1)) & i5;
                        i3 = R2.t;
                    }
                    i5 = i2 | i3;
                    i4 = 0;
                }
                abstractC0127b2.e = i4;
                abstractC0127b2.f = R2.f(i5, abstractC0127b.f);
                i4++;
                AbstractC0127b abstractC0127b3 = abstractC0127b2;
                abstractC0127b2 = abstractC0127b2.d;
                abstractC0127b = abstractC0127b3;
            }
        }
        if (i != 0) {
            this.f = R2.f(i, this.f);
        }
        return spliteratorU0;
    }

    final InterfaceC0142e2 A0(Spliterator spliterator, InterfaceC0142e2 interfaceC0142e2) {
        interfaceC0142e2.getClass();
        f0(spliterator, B0(interfaceC0142e2));
        return interfaceC0142e2;
    }

    final InterfaceC0142e2 B0(InterfaceC0142e2 interfaceC0142e2) {
        interfaceC0142e2.getClass();
        AbstractC0127b abstractC0127b = this;
        while (abstractC0127b.e > 0) {
            AbstractC0127b abstractC0127b2 = abstractC0127b.b;
            interfaceC0142e2 = abstractC0127b.w0(abstractC0127b2.f, interfaceC0142e2);
            abstractC0127b = abstractC0127b2;
        }
        return interfaceC0142e2;
    }

    final Spliterator C0(Spliterator spliterator) {
        return this.e == 0 ? spliterator : z0(this, new C0123a(spliterator, 10), this.a.k);
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final void close() {
        this.h = true;
        this.g = null;
        AbstractC0127b abstractC0127b = this.a;
        Runnable runnable = abstractC0127b.j;
        if (runnable != null) {
            abstractC0127b.j = null;
            runnable.run();
        }
    }

    final void f0(Spliterator spliterator, InterfaceC0142e2 interfaceC0142e2) {
        interfaceC0142e2.getClass();
        if (R2.SHORT_CIRCUIT.j(this.f)) {
            g0(spliterator, interfaceC0142e2);
            return;
        }
        interfaceC0142e2.n(spliterator.getExactSizeIfKnown());
        spliterator.a(interfaceC0142e2);
        interfaceC0142e2.m();
    }

    final void g0(Spliterator spliterator, InterfaceC0142e2 interfaceC0142e2) {
        AbstractC0127b abstractC0127b = this;
        while (abstractC0127b.e > 0) {
            abstractC0127b = abstractC0127b.b;
        }
        interfaceC0142e2.n(spliterator.getExactSizeIfKnown());
        abstractC0127b.m0(spliterator, interfaceC0142e2);
        interfaceC0142e2.m();
    }

    final G0 h0(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.a.k) {
            return k0(this, spliterator, z, intFunction);
        }
        InterfaceC0219y0 interfaceC0219y0S0 = s0(l0(spliterator), intFunction);
        A0(spliterator, interfaceC0219y0S0);
        return interfaceC0219y0S0.b();
    }

    final Object i0(w3 w3Var) {
        if (this.h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.h = true;
        return this.a.k ? w3Var.c(this, x0(w3Var.d())) : w3Var.a(this, x0(w3Var.d()));
    }

    @Override // j$.util.stream.BaseStream
    public final boolean isParallel() {
        return this.a.k;
    }

    final G0 j0(IntFunction intFunction) {
        AbstractC0127b abstractC0127b;
        if (this.h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.h = true;
        if (!this.a.k || (abstractC0127b = this.b) == null || !v0()) {
            return h0(x0(0), true, intFunction);
        }
        this.e = 0;
        return t0(abstractC0127b.x0(0), intFunction, abstractC0127b);
    }

    abstract G0 k0(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z, IntFunction intFunction);

    final long l0(Spliterator spliterator) {
        if (R2.SIZED.j(this.f)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    abstract void m0(Spliterator spliterator, InterfaceC0142e2 interfaceC0142e2);

    abstract S2 n0();

    final S2 o0() {
        AbstractC0127b abstractC0127b = this;
        while (abstractC0127b.e > 0) {
            abstractC0127b = abstractC0127b.b;
        }
        return abstractC0127b.n0();
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream onClose(Runnable runnable) {
        AbstractC0127b abstractC0127b = this.a;
        Runnable runnable2 = abstractC0127b.j;
        if (runnable2 != null) {
            runnable = new v3(runnable2, runnable);
        }
        abstractC0127b.j = runnable;
        return this;
    }

    final int p0() {
        return this.f;
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final BaseStream parallel() {
        this.a.k = true;
        return this;
    }

    final boolean q0() {
        return R2.ORDERED.j(this.f);
    }

    final /* synthetic */ Spliterator r0() {
        return x0(0);
    }

    abstract InterfaceC0219y0 s0(long j, IntFunction intFunction);

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final BaseStream sequential() {
        this.a.k = false;
        return this;
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public Spliterator spliterator() {
        if (this.h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.h = true;
        AbstractC0127b abstractC0127b = this.a;
        if (this != abstractC0127b) {
            return z0(this, new C0123a(this, 0), abstractC0127b.k);
        }
        Spliterator spliterator = abstractC0127b.g;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        abstractC0127b.g = null;
        return spliterator;
    }

    G0 t0(Spliterator spliterator, IntFunction intFunction, AbstractC0127b abstractC0127b) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    Spliterator u0(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        return t0(spliterator, new C0167l(14), abstractC0127b).spliterator();
    }

    abstract boolean v0();

    abstract InterfaceC0142e2 w0(int i, InterfaceC0142e2 interfaceC0142e2);

    final Spliterator y0() {
        AbstractC0127b abstractC0127b = this.a;
        if (this != abstractC0127b) {
            throw new IllegalStateException();
        }
        if (this.h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.h = true;
        Spliterator spliterator = abstractC0127b.g;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        abstractC0127b.g = null;
        return spliterator;
    }

    abstract Spliterator z0(AbstractC0127b abstractC0127b, Supplier supplier, boolean z);
}
