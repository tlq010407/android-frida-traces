package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class Z extends AbstractC0128b0 {
    Z(Spliterator spliterator, int i) {
        super(spliterator, i);
    }

    @Override // j$.util.stream.AbstractC0128b0, j$.util.stream.IntStream
    public final void A(j$.util.function.E e) {
        if (isParallel()) {
            super.A(e);
        } else {
            AbstractC0128b0.E0(y0()).e(e);
        }
    }

    @Override // j$.util.stream.AbstractC0128b0, j$.util.stream.IntStream
    public final void J(j$.util.function.E e) {
        if (isParallel()) {
            super.J(e);
        } else {
            AbstractC0128b0.E0(y0()).e(e);
        }
    }

    @Override // j$.util.stream.AbstractC0127b, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC0127b, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }

    @Override // j$.util.stream.AbstractC0127b
    final boolean v0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0127b
    final InterfaceC0142e2 w0(int i, InterfaceC0142e2 interfaceC0142e2) {
        throw new UnsupportedOperationException();
    }
}
