package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.InterfaceC0098m;

/* renamed from: j$.util.stream.z, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0222z extends B {
    C0222z(Spliterator spliterator, int i) {
        super(spliterator, i);
    }

    @Override // j$.util.stream.B, j$.util.stream.E
    public final void c0(InterfaceC0098m interfaceC0098m) {
        if (isParallel()) {
            super.c0(interfaceC0098m);
        } else {
            B.E0(y0()).e(interfaceC0098m);
        }
    }

    @Override // j$.util.stream.B, j$.util.stream.E
    public final void i(InterfaceC0098m interfaceC0098m) {
        if (isParallel()) {
            super.i(interfaceC0098m);
        } else {
            B.E0(y0()).e(interfaceC0098m);
        }
    }

    @Override // j$.util.stream.AbstractC0127b, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* bridge */ /* synthetic */ E parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC0127b, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* bridge */ /* synthetic */ E sequential() {
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
