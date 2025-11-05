package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import j$.util.function.IntFunction;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: j$.util.stream.p, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0183p extends V1 {
    C0183p(AbstractC0127b abstractC0127b, int i) {
        super(abstractC0127b, i, 0);
    }

    static K0 D0(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        C0167l c0167l = new C0167l(23);
        C0167l c0167l2 = new C0167l(24);
        return new K0((Collection) new C0208v1(S2.REFERENCE, new C0167l(25), c0167l2, c0167l, 3).c(abstractC0127b, spliterator));
    }

    @Override // j$.util.stream.AbstractC0127b
    final G0 t0(Spliterator spliterator, IntFunction intFunction, AbstractC0127b abstractC0127b) {
        if (R2.DISTINCT.j(abstractC0127b.p0())) {
            return abstractC0127b.h0(spliterator, false, intFunction);
        }
        if (R2.ORDERED.j(abstractC0127b.p0())) {
            return D0(abstractC0127b, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new P(new C0168l0(5, atomicBoolean, concurrentHashMap), false).c(abstractC0127b, spliterator);
        Collection collectionKeySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(collectionKeySet);
            hashSet.add(null);
            collectionKeySet = hashSet;
        }
        return new K0(collectionKeySet);
    }

    @Override // j$.util.stream.AbstractC0127b
    final Spliterator u0(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        return R2.DISTINCT.j(abstractC0127b.p0()) ? abstractC0127b.C0(spliterator) : R2.ORDERED.j(abstractC0127b.p0()) ? D0(abstractC0127b, spliterator).spliterator() : new a3(abstractC0127b.C0(spliterator));
    }

    @Override // j$.util.stream.AbstractC0127b
    final InterfaceC0142e2 w0(int i, InterfaceC0142e2 interfaceC0142e2) {
        interfaceC0142e2.getClass();
        return R2.DISTINCT.j(i) ? interfaceC0142e2 : R2.SORTED.j(i) ? new C0175n(interfaceC0142e2) : new C0179o(interfaceC0142e2);
    }
}
