package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.IntFunction;
import java.util.Arrays;

/* renamed from: j$.util.stream.y2, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0221y2 extends AbstractC0152h0 {
    C0221y2(AbstractC0127b abstractC0127b) {
        super(abstractC0127b, R2.q | R2.o, 0);
    }

    @Override // j$.util.stream.AbstractC0127b
    public final G0 t0(Spliterator spliterator, IntFunction intFunction, AbstractC0127b abstractC0127b) {
        if (R2.SORTED.j(abstractC0127b.p0())) {
            return abstractC0127b.h0(spliterator, false, intFunction);
        }
        long[] jArr = (long[]) ((E0) abstractC0127b.h0(spliterator, true, intFunction)).e();
        Arrays.sort(jArr);
        return new C0165k1(jArr);
    }

    @Override // j$.util.stream.AbstractC0127b
    public final InterfaceC0142e2 w0(int i, InterfaceC0142e2 interfaceC0142e2) {
        interfaceC0142e2.getClass();
        return R2.SORTED.j(i) ? interfaceC0142e2 : R2.SIZED.j(i) ? new D2(interfaceC0142e2) : new C0209v2(interfaceC0142e2);
    }
}
