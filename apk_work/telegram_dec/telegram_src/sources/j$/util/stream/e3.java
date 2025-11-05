package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import j$.util.function.Supplier;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class e3 extends T2 implements j$.util.G {
    e3(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z) {
        super(abstractC0127b, spliterator, z);
    }

    e3(AbstractC0127b abstractC0127b, Supplier supplier, boolean z) {
        super(abstractC0127b, supplier, z);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void a(Consumer consumer) {
        j$.util.A.f(this, consumer);
    }

    @Override // j$.util.M
    /* renamed from: c */
    public final void e(j$.util.function.E e) {
        if (this.h != null || this.i) {
            while (p(e)) {
            }
            return;
        }
        e.getClass();
        h();
        d3 d3Var = new d3(e, 1);
        this.b.A0(this.d, d3Var);
        this.i = true;
    }

    @Override // j$.util.M
    /* renamed from: g */
    public final boolean p(j$.util.function.E e) {
        e.getClass();
        boolean zB = b();
        if (zB) {
            J2 j2 = (J2) this.h;
            long j = this.g;
            int iW = j2.w(j);
            e.accept((j2.c == 0 && iW == 0) ? ((int[]) j2.e)[(int) j] : ((int[][]) j2.f)[iW][(int) (j - j2.d[iW])]);
        }
        return zB;
    }

    @Override // j$.util.stream.T2
    final void j() {
        J2 j2 = new J2();
        this.h = j2;
        this.e = this.b.B0(new d3(j2, 0));
        this.f = new C0123a(this, 5);
    }

    @Override // j$.util.stream.T2
    final T2 k(Spliterator spliterator) {
        return new e3(this.b, spliterator, this.a);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean s(Consumer consumer) {
        return j$.util.A.m(this, consumer);
    }

    @Override // j$.util.stream.T2, j$.util.Spliterator
    public final j$.util.G trySplit() {
        return (j$.util.G) super.trySplit();
    }

    @Override // j$.util.stream.T2, j$.util.Spliterator
    public final j$.util.M trySplit() {
        return (j$.util.G) super.trySplit();
    }

    @Override // j$.util.stream.T2, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.G) super.trySplit();
    }
}
