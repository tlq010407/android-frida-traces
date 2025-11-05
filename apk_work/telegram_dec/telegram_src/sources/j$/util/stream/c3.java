package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import j$.util.function.InterfaceC0098m;
import j$.util.function.Supplier;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class c3 extends T2 implements j$.util.D {
    c3(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z) {
        super(abstractC0127b, spliterator, z);
    }

    c3(AbstractC0127b abstractC0127b, Supplier supplier, boolean z) {
        super(abstractC0127b, supplier, z);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void a(Consumer consumer) {
        j$.util.A.b(this, consumer);
    }

    @Override // j$.util.M
    public final void e(InterfaceC0098m interfaceC0098m) {
        if (this.h != null || this.i) {
            while (p(interfaceC0098m)) {
            }
            return;
        }
        interfaceC0098m.getClass();
        h();
        b3 b3Var = new b3(interfaceC0098m, 1);
        this.b.A0(this.d, b3Var);
        this.i = true;
    }

    @Override // j$.util.stream.T2
    final void j() {
        H2 h2 = new H2();
        this.h = h2;
        this.e = this.b.B0(new b3(h2, 0));
        this.f = new C0123a(this, 4);
    }

    @Override // j$.util.stream.T2
    final T2 k(Spliterator spliterator) {
        return new c3(this.b, spliterator, this.a);
    }

    @Override // j$.util.M
    public final boolean p(InterfaceC0098m interfaceC0098m) {
        interfaceC0098m.getClass();
        boolean zB = b();
        if (zB) {
            H2 h2 = (H2) this.h;
            long j = this.g;
            int iW = h2.w(j);
            interfaceC0098m.accept((h2.c == 0 && iW == 0) ? ((double[]) h2.e)[(int) j] : ((double[][]) h2.f)[iW][(int) (j - h2.d[iW])]);
        }
        return zB;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean s(Consumer consumer) {
        return j$.util.A.l(this, consumer);
    }

    @Override // j$.util.stream.T2, j$.util.Spliterator
    public final j$.util.D trySplit() {
        return (j$.util.D) super.trySplit();
    }

    @Override // j$.util.stream.T2, j$.util.Spliterator
    public final j$.util.M trySplit() {
        return (j$.util.D) super.trySplit();
    }

    @Override // j$.util.stream.T2, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.D) super.trySplit();
    }
}
