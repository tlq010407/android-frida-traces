package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import j$.util.function.IntFunction;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class R0 extends I0 {
    R0(G0 g0, G0 g02) {
        super(g0, g02);
    }

    @Override // j$.util.stream.G0
    public final void forEach(Consumer consumer) {
        this.a.forEach(consumer);
        this.b.forEach(consumer);
    }

    @Override // j$.util.stream.G0
    public final void i(Object[] objArr, int i) {
        objArr.getClass();
        G0 g0 = this.a;
        g0.i(objArr, i);
        this.b.i(objArr, i + ((int) g0.count()));
    }

    @Override // j$.util.stream.G0
    public final Object[] s(IntFunction intFunction) {
        long jCount = count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jCount);
        i(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.G0
    public final Spliterator spliterator() {
        return new C0157i1(this);
    }

    @Override // j$.util.stream.G0
    public final G0 t(long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long jCount = this.a.count();
        if (j >= jCount) {
            return this.b.t(j - jCount, j2 - jCount, intFunction);
        }
        if (j2 <= jCount) {
            return this.a.t(j, j2, intFunction);
        }
        return AbstractC0203u0.I(S2.REFERENCE, this.a.t(j, jCount, intFunction), this.b.t(0L, j2 - jCount, intFunction));
    }

    public final String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.a, this.b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
