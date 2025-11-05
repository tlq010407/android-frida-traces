package j$.util.stream;

import j$.util.Comparator$CC;
import j$.util.Spliterator;
import j$.util.function.IntFunction;
import java.util.Arrays;
import java.util.Comparator;

/* renamed from: j$.util.stream.z2, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0225z2 extends V1 {
    private final boolean m;
    private final Comparator n;

    C0225z2(AbstractC0127b abstractC0127b) {
        super(abstractC0127b, R2.q | R2.o, 0);
        this.m = true;
        this.n = Comparator$CC.a();
    }

    C0225z2(AbstractC0127b abstractC0127b, Comparator comparator) {
        super(abstractC0127b, R2.q | R2.p, 0);
        this.m = false;
        comparator.getClass();
        this.n = comparator;
    }

    @Override // j$.util.stream.AbstractC0127b
    public final G0 t0(Spliterator spliterator, IntFunction intFunction, AbstractC0127b abstractC0127b) {
        if (R2.SORTED.j(abstractC0127b.p0()) && this.m) {
            return abstractC0127b.h0(spliterator, false, intFunction);
        }
        Object[] objArrS = abstractC0127b.h0(spliterator, true, intFunction).s(intFunction);
        Arrays.sort(objArrS, this.n);
        return new J0(objArrS);
    }

    @Override // j$.util.stream.AbstractC0127b
    public final InterfaceC0142e2 w0(int i, InterfaceC0142e2 interfaceC0142e2) {
        interfaceC0142e2.getClass();
        if (R2.SORTED.j(i) && this.m) {
            return interfaceC0142e2;
        }
        boolean zJ = R2.SIZED.j(i);
        Comparator comparator = this.n;
        return zJ ? new E2(interfaceC0142e2, comparator) : new A2(interfaceC0142e2, comparator);
    }
}
