package j$.util;

import j$.util.function.Consumer;
import java.util.PrimitiveIterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class r implements InterfaceC0226t, InterfaceC0112h {
    public final /* synthetic */ PrimitiveIterator.OfInt a;

    private /* synthetic */ r(PrimitiveIterator.OfInt ofInt) {
        this.a = ofInt;
    }

    public static /* synthetic */ InterfaceC0226t b(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C0122s ? ((C0122s) ofInt).a : new r(ofInt);
    }

    @Override // j$.util.InterfaceC0226t, j$.util.InterfaceC0112h
    public final /* synthetic */ void a(Consumer consumer) {
        this.a.forEachRemaining(Consumer.Wrapper.convert(consumer));
    }

    @Override // j$.util.InterfaceC0226t
    public final /* synthetic */ void c(j$.util.function.E e) {
        this.a.forEachRemaining(j$.util.function.D.a(e));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfInt ofInt = this.a;
        if (obj instanceof r) {
            obj = ((r) obj).a;
        }
        return ofInt.equals(obj);
    }

    @Override // j$.util.InterfaceC0231y
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.InterfaceC0226t, java.util.Iterator
    public final /* synthetic */ Integer next() {
        return this.a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.a.next();
    }

    @Override // j$.util.InterfaceC0226t
    public final /* synthetic */ int nextInt() {
        return this.a.nextInt();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.a.remove();
    }
}
