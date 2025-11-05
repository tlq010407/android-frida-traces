package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class U1 extends W1 {
    U1(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    @Override // j$.util.stream.W1, j$.util.stream.Stream
    public final void e(Consumer consumer) {
        if (isParallel()) {
            super.e(consumer);
        } else {
            y0().a(consumer);
        }
    }

    @Override // j$.util.stream.W1, j$.util.stream.Stream
    public final void forEach(Consumer consumer) {
        if (isParallel()) {
            super.forEach(consumer);
        } else {
            y0().a(consumer);
        }
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
