package j$.util;

import j$.util.function.C0097l;
import j$.util.function.Consumer;
import j$.util.function.InterfaceC0098m;
import java.util.Comparator;
import java.util.Spliterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class B implements D {
    public final /* synthetic */ Spliterator.OfDouble a;

    private /* synthetic */ B(Spliterator.OfDouble ofDouble) {
        this.a = ofDouble;
    }

    public static /* synthetic */ D b(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C ? ((C) ofDouble).a : new B(ofDouble);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void a(Consumer consumer) {
        this.a.forEachRemaining(Consumer.Wrapper.convert(consumer));
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.a.characteristics();
    }

    @Override // j$.util.D
    /* renamed from: e */
    public final /* synthetic */ void forEachRemaining(InterfaceC0098m interfaceC0098m) {
        this.a.forEachRemaining(C0097l.a(interfaceC0098m));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfDouble ofDouble = this.a;
        if (obj instanceof B) {
            obj = ((B) obj).a;
        }
        return ofDouble.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.a.estimateSize();
    }

    @Override // j$.util.M
    /* renamed from: forEachRemaining */
    public final /* synthetic */ void e(Object obj) {
        this.a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.D
    /* renamed from: p */
    public final /* synthetic */ boolean tryAdvance(InterfaceC0098m interfaceC0098m) {
        return this.a.tryAdvance(C0097l.a(interfaceC0098m));
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean s(Consumer consumer) {
        return this.a.tryAdvance(Consumer.Wrapper.convert(consumer));
    }

    @Override // j$.util.M
    /* renamed from: tryAdvance */
    public final /* synthetic */ boolean p(Object obj) {
        return this.a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // j$.util.D, j$.util.M, j$.util.Spliterator
    public final /* synthetic */ D trySplit() {
        return b(this.a.trySplit());
    }

    @Override // j$.util.M, j$.util.Spliterator
    public final /* synthetic */ M trySplit() {
        return K.b(this.a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return N.b(this.a.trySplit());
    }
}
