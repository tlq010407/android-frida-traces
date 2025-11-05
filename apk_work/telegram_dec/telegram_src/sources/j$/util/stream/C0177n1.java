package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.InterfaceC0098m;

/* renamed from: j$.util.stream.n1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0177n1 extends AbstractC0192r1 implements InterfaceC0130b2 {
    private final double[] h;

    C0177n1(Spliterator spliterator, AbstractC0127b abstractC0127b, double[] dArr) {
        super(dArr.length, spliterator, abstractC0127b);
        this.h = dArr;
    }

    C0177n1(C0177n1 c0177n1, Spliterator spliterator, long j, long j2) {
        super(c0177n1, spliterator, j, j2, c0177n1.h.length);
        this.h = c0177n1.h;
    }

    @Override // j$.util.stream.AbstractC0192r1
    final AbstractC0192r1 a(Spliterator spliterator, long j, long j2) {
        return new C0177n1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC0192r1, j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        double[] dArr = this.h;
        this.f = i + 1;
        dArr[i] = d;
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        r((Double) obj);
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }

    @Override // j$.util.stream.InterfaceC0130b2
    public final /* synthetic */ void r(Double d) {
        AbstractC0203u0.e(this, d);
    }
}
