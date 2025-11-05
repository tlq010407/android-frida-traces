package j$.util;

import j$.util.function.Consumer;
import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.w, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0229w implements PrimitiveIterator.OfLong {
    public final /* synthetic */ InterfaceC0230x a;

    private /* synthetic */ C0229w(InterfaceC0230x interfaceC0230x) {
        this.a = interfaceC0230x;
    }

    public static /* synthetic */ PrimitiveIterator.OfLong b(InterfaceC0230x interfaceC0230x) {
        if (interfaceC0230x == null) {
            return null;
        }
        return interfaceC0230x instanceof C0228v ? ((C0228v) interfaceC0230x).a : new C0229w(interfaceC0230x);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC0230x interfaceC0230x = this.a;
        if (obj instanceof C0229w) {
            obj = ((C0229w) obj).a;
        }
        return interfaceC0230x.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.a.forEachRemaining(longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.a.a(Consumer.VivifiedWrapper.convert(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.a.d(j$.util.function.Q.a(longConsumer));
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ Long next() {
        return this.a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong
    public final /* synthetic */ long nextLong() {
        return this.a.nextLong();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.a.remove();
    }
}
