package j$.util;

import j$.util.function.Consumer;
import java.util.NoSuchElementException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class P implements InterfaceC0226t, j$.util.function.E, InterfaceC0112h {
    boolean a = false;
    int b;
    final /* synthetic */ G c;

    P(G g) {
        this.c = g;
    }

    @Override // j$.util.InterfaceC0226t, j$.util.InterfaceC0112h
    public final void a(Consumer consumer) {
        if (consumer instanceof j$.util.function.E) {
            forEachRemaining((j$.util.function.E) consumer);
            return;
        }
        consumer.getClass();
        if (d0.a) {
            d0.a(P.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
            throw null;
        }
        forEachRemaining(new C0121q(consumer));
    }

    @Override // j$.util.function.E
    public final void accept(int i) {
        this.a = true;
        this.b = i;
    }

    @Override // j$.util.InterfaceC0231y
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final void forEachRemaining(j$.util.function.E e) {
        e.getClass();
        while (hasNext()) {
            e.accept(nextInt());
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.a) {
            this.c.tryAdvance(this);
        }
        return this.a;
    }

    @Override // j$.util.function.E
    public final /* synthetic */ j$.util.function.E l(j$.util.function.E e) {
        return j$.com.android.tools.r8.a.c(this, e);
    }

    @Override // java.util.Iterator
    public final Integer next() {
        if (!d0.a) {
            return Integer.valueOf(nextInt());
        }
        d0.a(P.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
        throw null;
    }

    @Override // j$.util.InterfaceC0226t
    public final int nextInt() {
        if (!this.a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.a = false;
        return this.b;
    }
}
