package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import j$.util.function.Supplier;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class g3 extends T2 implements j$.util.J {
    g3(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z) {
        super(abstractC0127b, spliterator, z);
    }

    g3(AbstractC0127b abstractC0127b, Supplier supplier, boolean z) {
        super(abstractC0127b, supplier, z);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void a(Consumer consumer) {
        j$.util.A.h(this, consumer);
    }

    @Override // j$.util.M
    /* renamed from: d */
    public final void e(j$.util.function.T t) {
        if (this.h != null || this.i) {
            while (p(t)) {
            }
            return;
        }
        t.getClass();
        h();
        f3 f3Var = new f3(t, 1);
        this.b.A0(this.d, f3Var);
        this.i = true;
    }

    @Override // j$.util.M
    /* renamed from: i */
    public final boolean p(j$.util.function.T t) {
        t.getClass();
        boolean zB = b();
        if (zB) {
            L2 l2 = (L2) this.h;
            long j = this.g;
            int iW = l2.w(j);
            t.accept((l2.c == 0 && iW == 0) ? ((long[]) l2.e)[(int) j] : ((long[][]) l2.f)[iW][(int) (j - l2.d[iW])]);
        }
        return zB;
    }

    @Override // j$.util.stream.T2
    final void j() {
        L2 l2 = new L2();
        this.h = l2;
        this.e = this.b.B0(new f3(l2, 0));
        this.f = new C0123a(this, 6);
    }

    @Override // j$.util.stream.T2
    final T2 k(Spliterator spliterator) {
        return new g3(this.b, spliterator, this.a);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean s(Consumer consumer) {
        return j$.util.A.n(this, consumer);
    }

    @Override // j$.util.stream.T2, j$.util.Spliterator
    public final j$.util.J trySplit() {
        return (j$.util.J) super.trySplit();
    }

    @Override // j$.util.stream.T2, j$.util.Spliterator
    public final j$.util.M trySplit() {
        return (j$.util.J) super.trySplit();
    }

    @Override // j$.util.stream.T2, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.J) super.trySplit();
    }
}
