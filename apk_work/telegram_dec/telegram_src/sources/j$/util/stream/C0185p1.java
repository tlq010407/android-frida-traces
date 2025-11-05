package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.p1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0185p1 extends AbstractC0192r1 implements InterfaceC0138d2 {
    private final long[] h;

    C0185p1(Spliterator spliterator, AbstractC0127b abstractC0127b, long[] jArr) {
        super(jArr.length, spliterator, abstractC0127b);
        this.h = jArr;
    }

    C0185p1(C0185p1 c0185p1, Spliterator spliterator, long j, long j2) {
        super(c0185p1, spliterator, j, j2, c0185p1.h.length);
        this.h = c0185p1.h;
    }

    @Override // j$.util.stream.AbstractC0192r1
    final AbstractC0192r1 a(Spliterator spliterator, long j, long j2) {
        return new C0185p1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC0192r1, j$.util.stream.InterfaceC0142e2
    public final void accept(long j) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        long[] jArr = this.h;
        this.f = i + 1;
        jArr[i] = j;
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        j((Long) obj);
    }

    @Override // j$.util.function.T
    public final /* synthetic */ j$.util.function.T f(j$.util.function.T t) {
        return j$.com.android.tools.r8.a.d(this, t);
    }

    @Override // j$.util.stream.InterfaceC0138d2
    public final /* synthetic */ void j(Long l) {
        AbstractC0203u0.i(this, l);
    }
}
