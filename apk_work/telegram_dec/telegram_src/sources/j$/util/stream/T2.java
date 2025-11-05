package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Supplier;
import java.util.Comparator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class T2 implements Spliterator {
    final boolean a;
    final AbstractC0127b b;
    private Supplier c;
    Spliterator d;
    InterfaceC0142e2 e;
    C0123a f;
    long g;
    AbstractC0135d h;
    boolean i;

    T2(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z) {
        this.b = abstractC0127b;
        this.c = null;
        this.d = spliterator;
        this.a = z;
    }

    T2(AbstractC0127b abstractC0127b, Supplier supplier, boolean z) {
        this.b = abstractC0127b;
        this.c = supplier;
        this.d = null;
        this.a = z;
    }

    private boolean f() {
        while (this.h.count() == 0) {
            if (this.e.q() || !this.f.f()) {
                if (this.i) {
                    return false;
                }
                this.e.m();
                this.i = true;
            }
        }
        return true;
    }

    final boolean b() {
        AbstractC0135d abstractC0135d = this.h;
        if (abstractC0135d == null) {
            if (this.i) {
                return false;
            }
            h();
            j();
            this.g = 0L;
            this.e.n(this.d.getExactSizeIfKnown());
            return f();
        }
        long j = this.g + 1;
        this.g = j;
        boolean z = j < abstractC0135d.count();
        if (z) {
            return z;
        }
        this.g = 0L;
        this.h.clear();
        return f();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        h();
        int iN = R2.n(this.b.p0()) & R2.f;
        return (iN & 64) != 0 ? (iN & (-16449)) | (this.d.characteristics() & 16448) : iN;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        h();
        return this.d.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (j$.util.A.k(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        h();
        if (R2.SIZED.j(this.b.p0())) {
            return this.d.getExactSizeIfKnown();
        }
        return -1L;
    }

    final void h() {
        if (this.d == null) {
            this.d = (Spliterator) this.c.get();
            this.c = null;
        }
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.util.A.k(this, i);
    }

    abstract void j();

    abstract T2 k(Spliterator spliterator);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.d);
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        if (!this.a || this.i) {
            return null;
        }
        h();
        Spliterator spliteratorTrySplit = this.d.trySplit();
        if (spliteratorTrySplit == null) {
            return null;
        }
        return k(spliteratorTrySplit);
    }
}
