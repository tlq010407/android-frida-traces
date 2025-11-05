package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.IntFunction;
import java.util.concurrent.CountedCompleter;

/* renamed from: j$.util.stream.o2, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0182o2 extends AbstractC0131c {
    private final AbstractC0127b j;
    private final IntFunction k;
    private final long l;
    private final long m;
    private long n;
    private volatile boolean o;

    C0182o2(AbstractC0127b abstractC0127b, AbstractC0127b abstractC0127b2, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(abstractC0127b2, spliterator);
        this.j = abstractC0127b;
        this.k = intFunction;
        this.l = j;
        this.m = j2;
    }

    C0182o2(C0182o2 c0182o2, Spliterator spliterator) {
        super(c0182o2, spliterator);
        this.j = c0182o2.j;
        this.k = c0182o2.k;
        this.l = c0182o2.l;
        this.m = c0182o2.m;
    }

    private long j(long j) {
        if (this.o) {
            return this.n;
        }
        C0182o2 c0182o2 = (C0182o2) this.d;
        C0182o2 c0182o22 = (C0182o2) this.e;
        if (c0182o2 == null || c0182o22 == null) {
            return this.n;
        }
        long j2 = c0182o2.j(j);
        return j2 >= j ? j2 : j2 + c0182o22.j(j);
    }

    @Override // j$.util.stream.AbstractC0139e
    protected final Object a() {
        if (c()) {
            InterfaceC0219y0 interfaceC0219y0S0 = this.j.s0(R2.SIZED.k(this.j.c) ? this.j.l0(this.b) : -1L, this.k);
            InterfaceC0142e2 interfaceC0142e2W0 = this.j.w0(this.a.p0(), interfaceC0219y0S0);
            AbstractC0127b abstractC0127b = this.a;
            abstractC0127b.g0(this.b, abstractC0127b.B0(interfaceC0142e2W0));
            return interfaceC0219y0S0.b();
        }
        AbstractC0127b abstractC0127b2 = this.a;
        InterfaceC0219y0 interfaceC0219y0S02 = abstractC0127b2.s0(-1L, this.k);
        abstractC0127b2.A0(this.b, interfaceC0219y0S02);
        G0 g0B = interfaceC0219y0S02.b();
        this.n = g0B.count();
        this.o = true;
        this.b = null;
        return g0B;
    }

    @Override // j$.util.stream.AbstractC0139e
    protected final AbstractC0139e d(Spliterator spliterator) {
        return new C0182o2(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0131c
    protected final void g() {
        this.i = true;
        if (this.o) {
            e(AbstractC0203u0.L(this.j.n0()));
        }
    }

    @Override // j$.util.stream.AbstractC0131c
    protected final Object i() {
        return AbstractC0203u0.L(this.j.n0());
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    @Override // j$.util.stream.AbstractC0139e, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onCompletion(CountedCompleter countedCompleter) {
        C0182o2 c0182o2;
        G0 g0I;
        AbstractC0139e abstractC0139e = this.d;
        if (!(abstractC0139e == null)) {
            this.n = ((C0182o2) abstractC0139e).n + ((C0182o2) this.e).n;
            if (this.i) {
                this.n = 0L;
            } else {
                if (this.n != 0) {
                    g0I = ((C0182o2) this.d).n == 0 ? (G0) ((C0182o2) this.e).b() : AbstractC0203u0.I(this.j.n0(), (G0) ((C0182o2) this.d).b(), (G0) ((C0182o2) this.e).b());
                }
                G0 g0T = g0I;
                if (c()) {
                    g0T = g0T.t(this.l, this.m >= 0 ? Math.min(g0T.count(), this.l + this.m) : this.n, this.k);
                }
                e(g0T);
                this.o = true;
            }
            g0I = AbstractC0203u0.L(this.j.n0());
            G0 g0T2 = g0I;
            if (c()) {
            }
            e(g0T2);
            this.o = true;
        }
        if (this.m >= 0 && !c()) {
            long j = this.l + this.m;
            long j2 = this.o ? this.n : j(j);
            if (j2 >= j) {
                h();
            } else {
                C0182o2 c0182o22 = (C0182o2) ((AbstractC0139e) getCompleter());
                C0182o2 c0182o23 = this;
                while (true) {
                    if (c0182o22 == null) {
                        if (j2 >= j) {
                            break;
                        }
                    } else {
                        if (c0182o23 == c0182o22.e && (c0182o2 = (C0182o2) c0182o22.d) != null) {
                            j2 += c0182o2.j(j);
                            if (j2 >= j) {
                                break;
                            }
                        }
                        c0182o23 = c0182o22;
                        c0182o22 = (C0182o2) ((AbstractC0139e) c0182o22.getCompleter());
                    }
                }
                h();
            }
        }
        super.onCompletion(countedCompleter);
    }
}
