package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.function.Consumer;
import j$.util.function.IntFunction;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class W0 extends Z0 implements C0 {
    W0() {
    }

    @Override // j$.util.stream.Z0, j$.util.stream.G0
    public final F0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.Z0, j$.util.stream.G0
    public final /* bridge */ /* synthetic */ G0 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.G0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void i(Integer[] numArr, int i) {
        AbstractC0203u0.o(this, numArr, i);
    }

    @Override // j$.util.stream.F0
    public final Object e() {
        return AbstractC0203u0.e;
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0203u0.r(this, consumer);
    }

    @Override // j$.util.stream.G0
    public final j$.util.M spliterator() {
        return Spliterators.c();
    }

    @Override // j$.util.stream.G0
    public final Spliterator spliterator() {
        return Spliterators.c();
    }

    @Override // j$.util.stream.Z0, j$.util.stream.G0
    public final /* synthetic */ G0 t(long j, long j2, IntFunction intFunction) {
        return AbstractC0203u0.u(this, j, j2);
    }
}
