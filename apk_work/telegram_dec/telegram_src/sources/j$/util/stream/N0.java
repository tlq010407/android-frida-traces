package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import j$.util.function.IntFunction;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class N0 extends Q0 implements A0 {
    N0(A0 a0, A0 a02) {
        super(a0, a02);
    }

    @Override // j$.util.stream.G0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void i(Double[] dArr, int i) {
        AbstractC0203u0.n(this, dArr, i);
    }

    @Override // j$.util.stream.F0
    public final Object c(int i) {
        return new double[i];
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0203u0.q(this, consumer);
    }

    @Override // j$.util.stream.G0
    public final j$.util.M spliterator() {
        return new C0141e1(this);
    }

    @Override // j$.util.stream.G0
    public final Spliterator spliterator() {
        return new C0141e1(this);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ G0 t(long j, long j2, IntFunction intFunction) {
        return AbstractC0203u0.t(this, j, j2);
    }
}
