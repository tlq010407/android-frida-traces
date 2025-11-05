package j$.util;

import j$.util.function.C0096k;
import j$.util.function.Consumer;
import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.o, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0119o implements PrimitiveIterator.OfDouble {
    public final /* synthetic */ InterfaceC0120p a;

    private /* synthetic */ C0119o(InterfaceC0120p interfaceC0120p) {
        this.a = interfaceC0120p;
    }

    public static /* synthetic */ PrimitiveIterator.OfDouble b(InterfaceC0120p interfaceC0120p) {
        if (interfaceC0120p == null) {
            return null;
        }
        return interfaceC0120p instanceof C0118n ? ((C0118n) interfaceC0120p).a : new C0119o(interfaceC0120p);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC0120p interfaceC0120p = this.a;
        if (obj instanceof C0119o) {
            obj = ((C0119o) obj).a;
        }
        return interfaceC0120p.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.a.a(Consumer.VivifiedWrapper.convert(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.a.e(C0096k.a(doubleConsumer));
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    public final /* synthetic */ double nextDouble() {
        return this.a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.a.remove();
    }
}
