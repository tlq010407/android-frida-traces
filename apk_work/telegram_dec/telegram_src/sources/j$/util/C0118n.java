package j$.util;

import j$.util.function.C0097l;
import j$.util.function.Consumer;
import j$.util.function.InterfaceC0098m;
import java.util.PrimitiveIterator;

/* renamed from: j$.util.n, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0118n implements InterfaceC0120p, InterfaceC0112h {
    public final /* synthetic */ PrimitiveIterator.OfDouble a;

    private /* synthetic */ C0118n(PrimitiveIterator.OfDouble ofDouble) {
        this.a = ofDouble;
    }

    public static /* synthetic */ InterfaceC0120p b(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C0119o ? ((C0119o) ofDouble).a : new C0118n(ofDouble);
    }

    @Override // j$.util.InterfaceC0120p, j$.util.InterfaceC0112h
    public final /* synthetic */ void a(Consumer consumer) {
        this.a.forEachRemaining(Consumer.Wrapper.convert(consumer));
    }

    @Override // j$.util.InterfaceC0120p
    public final /* synthetic */ void e(InterfaceC0098m interfaceC0098m) {
        this.a.forEachRemaining(C0097l.a(interfaceC0098m));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfDouble ofDouble = this.a;
        if (obj instanceof C0118n) {
            obj = ((C0118n) obj).a;
        }
        return ofDouble.equals(obj);
    }

    @Override // j$.util.InterfaceC0231y
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.InterfaceC0120p, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.a.next();
    }

    @Override // j$.util.InterfaceC0120p
    public final /* synthetic */ double nextDouble() {
        return this.a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.a.remove();
    }
}
