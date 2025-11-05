package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: j$.util.stream.t0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0199t0 extends AbstractC0131c {
    private final C0195s0 j;

    C0199t0(C0195s0 c0195s0, AbstractC0127b abstractC0127b, Spliterator spliterator) {
        super(abstractC0127b, spliterator);
        this.j = c0195s0;
    }

    C0199t0(C0199t0 c0199t0, Spliterator spliterator) {
        super(c0199t0, spliterator);
        this.j = c0199t0.j;
    }

    @Override // j$.util.stream.AbstractC0139e
    protected final Object a() {
        AbstractC0127b abstractC0127b = this.a;
        AbstractC0188q0 abstractC0188q0 = (AbstractC0188q0) this.j.b.get();
        abstractC0127b.A0(this.b, abstractC0188q0);
        boolean z = abstractC0188q0.b;
        if (z == this.j.a.b) {
            Boolean boolValueOf = Boolean.valueOf(z);
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, boolValueOf) && atomicReference.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.AbstractC0139e
    protected final AbstractC0139e d(Spliterator spliterator) {
        return new C0199t0(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0131c
    protected final Object i() {
        return Boolean.valueOf(!this.j.a.b);
    }
}
