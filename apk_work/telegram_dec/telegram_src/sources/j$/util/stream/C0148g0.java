package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.g0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0148g0 extends AbstractC0156i0 {
    C0148g0(Spliterator spliterator, int i) {
        super(spliterator, i);
    }

    @Override // j$.util.stream.AbstractC0156i0, j$.util.stream.LongStream
    public final void T(j$.util.function.T t) {
        if (isParallel()) {
            super.T(t);
        } else {
            AbstractC0156i0.E0(y0()).e(t);
        }
    }

    @Override // j$.util.stream.AbstractC0156i0, j$.util.stream.LongStream
    public final void c(j$.util.function.T t) {
        if (isParallel()) {
            super.c(t);
        } else {
            AbstractC0156i0.E0(y0()).e(t);
        }
    }

    @Override // j$.util.stream.AbstractC0127b, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* bridge */ /* synthetic */ LongStream parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC0127b, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* bridge */ /* synthetic */ LongStream sequential() {
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
