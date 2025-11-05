package j$.util;

import j$.util.function.Consumer;
import java.util.PrimitiveIterator;

/* renamed from: j$.util.v, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0228v implements InterfaceC0230x, InterfaceC0112h {
    public final /* synthetic */ PrimitiveIterator.OfLong a;

    private /* synthetic */ C0228v(PrimitiveIterator.OfLong ofLong) {
        this.a = ofLong;
    }

    public static /* synthetic */ InterfaceC0230x b(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C0229w ? ((C0229w) ofLong).a : new C0228v(ofLong);
    }

    @Override // j$.util.InterfaceC0230x, j$.util.InterfaceC0112h
    public final /* synthetic */ void a(Consumer consumer) {
        this.a.forEachRemaining(Consumer.Wrapper.convert(consumer));
    }

    @Override // j$.util.InterfaceC0230x
    public final /* synthetic */ void d(j$.util.function.T t) {
        this.a.forEachRemaining(j$.util.function.S.a(t));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfLong ofLong = this.a;
        if (obj instanceof C0228v) {
            obj = ((C0228v) obj).a;
        }
        return ofLong.equals(obj);
    }

    @Override // j$.util.InterfaceC0231y
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.InterfaceC0230x, java.util.Iterator
    public final /* synthetic */ Long next() {
        return this.a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.a.next();
    }

    @Override // j$.util.InterfaceC0230x
    public final /* synthetic */ long nextLong() {
        return this.a.nextLong();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.a.remove();
    }
}
