package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import j$.util.function.IntFunction;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class O0 extends Q0 implements C0 {
    O0(C0 c0, C0 c02) {
        super(c0, c02);
    }

    @Override // j$.util.stream.G0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void i(Integer[] numArr, int i) {
        AbstractC0203u0.o(this, numArr, i);
    }

    @Override // j$.util.stream.F0
    public final Object c(int i) {
        return new int[i];
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0203u0.r(this, consumer);
    }

    @Override // j$.util.stream.G0
    public final j$.util.M spliterator() {
        return new C0145f1(this);
    }

    @Override // j$.util.stream.G0
    public final Spliterator spliterator() {
        return new C0145f1(this);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ G0 t(long j, long j2, IntFunction intFunction) {
        return AbstractC0203u0.u(this, j, j2);
    }
}
