package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.o1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0181o1 extends AbstractC0192r1 implements InterfaceC0134c2 {
    private final int[] h;

    C0181o1(Spliterator spliterator, AbstractC0127b abstractC0127b, int[] iArr) {
        super(iArr.length, spliterator, abstractC0127b);
        this.h = iArr;
    }

    C0181o1(C0181o1 c0181o1, Spliterator spliterator, long j, long j2) {
        super(c0181o1, spliterator, j, j2, c0181o1.h.length);
        this.h = c0181o1.h;
    }

    @Override // j$.util.stream.AbstractC0192r1
    final AbstractC0192r1 a(Spliterator spliterator, long j, long j2) {
        return new C0181o1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC0192r1, j$.util.stream.InterfaceC0142e2
    public final void accept(int i) {
        int i2 = this.f;
        if (i2 >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        int[] iArr = this.h;
        this.f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        o((Integer) obj);
    }

    @Override // j$.util.function.E
    public final /* synthetic */ j$.util.function.E l(j$.util.function.E e) {
        return j$.com.android.tools.r8.a.c(this, e);
    }

    @Override // j$.util.stream.InterfaceC0134c2
    public final /* synthetic */ void o(Integer num) {
        AbstractC0203u0.g(this, num);
    }
}
