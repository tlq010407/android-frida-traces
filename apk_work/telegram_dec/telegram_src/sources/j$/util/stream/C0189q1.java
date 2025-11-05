package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.q1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0189q1 extends AbstractC0192r1 {
    private final Object[] h;

    C0189q1(Spliterator spliterator, AbstractC0127b abstractC0127b, Object[] objArr) {
        super(objArr.length, spliterator, abstractC0127b);
        this.h = objArr;
    }

    C0189q1(C0189q1 c0189q1, Spliterator spliterator, long j, long j2) {
        super(c0189q1, spliterator, j, j2, c0189q1.h.length);
        this.h = c0189q1.h;
    }

    @Override // j$.util.stream.AbstractC0192r1
    final AbstractC0192r1 a(Spliterator spliterator, long j, long j2) {
        return new C0189q1(this, spliterator, j, j2);
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final void r(Object obj) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        Object[] objArr = this.h;
        this.f = i + 1;
        objArr[i] = obj;
    }
}
