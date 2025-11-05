package j$.util;

import j$.util.function.Consumer;
import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.s, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0122s implements PrimitiveIterator.OfInt {
    public final /* synthetic */ InterfaceC0226t a;

    private /* synthetic */ C0122s(InterfaceC0226t interfaceC0226t) {
        this.a = interfaceC0226t;
    }

    public static /* synthetic */ PrimitiveIterator.OfInt b(InterfaceC0226t interfaceC0226t) {
        if (interfaceC0226t == null) {
            return null;
        }
        return interfaceC0226t instanceof r ? ((r) interfaceC0226t).a : new C0122s(interfaceC0226t);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC0226t interfaceC0226t = this.a;
        if (obj instanceof C0122s) {
            obj = ((C0122s) obj).a;
        }
        return interfaceC0226t.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.a.forEachRemaining(intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.a.a(Consumer.VivifiedWrapper.convert(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.a.c(j$.util.function.C.a(intConsumer));
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ Integer next() {
        return this.a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt
    public final /* synthetic */ int nextInt() {
        return this.a.nextInt();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.a.remove();
    }
}
