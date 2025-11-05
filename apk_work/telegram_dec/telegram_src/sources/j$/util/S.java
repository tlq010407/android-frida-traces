package j$.util;

import j$.util.function.Consumer;
import j$.util.function.InterfaceC0098m;
import java.util.NoSuchElementException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class S implements InterfaceC0120p, InterfaceC0098m, InterfaceC0112h {
    boolean a = false;
    double b;
    final /* synthetic */ D c;

    S(D d) {
        this.c = d;
    }

    @Override // j$.util.InterfaceC0120p, j$.util.InterfaceC0112h
    public final void a(Consumer consumer) {
        if (consumer instanceof InterfaceC0098m) {
            forEachRemaining((InterfaceC0098m) consumer);
            return;
        }
        consumer.getClass();
        if (d0.a) {
            d0.a(S.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
            throw null;
        }
        forEachRemaining(new C0117m(consumer));
    }

    @Override // j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        this.a = true;
        this.b = d;
    }

    @Override // j$.util.InterfaceC0231y
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final void forEachRemaining(InterfaceC0098m interfaceC0098m) {
        interfaceC0098m.getClass();
        while (hasNext()) {
            interfaceC0098m.accept(nextDouble());
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.a) {
            this.c.tryAdvance(this);
        }
        return this.a;
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }

    @Override // java.util.Iterator
    public final Double next() {
        if (!d0.a) {
            return Double.valueOf(nextDouble());
        }
        d0.a(S.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
        throw null;
    }

    @Override // j$.util.InterfaceC0120p
    public final double nextDouble() {
        if (!this.a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.a = false;
        return this.b;
    }
}
