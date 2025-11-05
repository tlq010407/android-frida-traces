package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import j$.util.function.IntFunction;

/* renamed from: j$.util.stream.s1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0196s1 extends O2 implements G0, InterfaceC0219y0 {
    C0196s1() {
    }

    @Override // j$.util.stream.G0
    public final G0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final /* synthetic */ void accept(double d) {
        AbstractC0203u0.b();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void accept(int i) {
        AbstractC0203u0.k();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void accept(long j) {
        AbstractC0203u0.l();
        throw null;
    }

    @Override // j$.util.stream.O2, j$.util.function.Consumer
    /* renamed from: accept */
    public final void r(Object obj) {
        super.r(obj);
    }

    @Override // j$.util.stream.InterfaceC0219y0
    public final G0 b() {
        return this;
    }

    @Override // j$.util.stream.O2, j$.util.stream.G0
    public final void forEach(Consumer consumer) {
        super.forEach(consumer);
    }

    @Override // j$.util.stream.G0
    public final void i(Object[] objArr, int i) {
        long j = i;
        long jCount = count() + j;
        if (jCount > objArr.length || jCount < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.c == 0) {
            System.arraycopy(this.e, 0, objArr, i, this.b);
            return;
        }
        for (int i2 = 0; i2 < this.c; i2++) {
            Object[] objArr2 = this.f[i2];
            System.arraycopy(objArr2, 0, objArr, i, objArr2.length);
            i += this.f[i2].length;
        }
        int i3 = this.b;
        if (i3 > 0) {
            System.arraycopy(this.e, 0, objArr, i, i3);
        }
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void m() {
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        clear();
        u(j);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ int p() {
        return 0;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ boolean q() {
        return false;
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

    @Override // j$.util.stream.O2, java.lang.Iterable
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ G0 t(long j, long j2, IntFunction intFunction) {
        return AbstractC0203u0.w(this, j, j2, intFunction);
    }
}
