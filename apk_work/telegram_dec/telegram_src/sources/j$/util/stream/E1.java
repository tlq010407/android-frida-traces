package j$.util.stream;

import j$.util.function.BiConsumer;
import j$.util.function.InterfaceC0091f;
import j$.util.function.Supplier;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class E1 extends AbstractC0203u0 {
    final /* synthetic */ InterfaceC0091f h;
    final /* synthetic */ BiConsumer i;
    final /* synthetic */ Supplier j;
    final /* synthetic */ Collector k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    E1(S2 s2, InterfaceC0091f interfaceC0091f, BiConsumer biConsumer, Supplier supplier, Collector collector) {
        super(s2);
        this.h = interfaceC0091f;
        this.i = biConsumer;
        this.j = supplier;
        this.k = collector;
    }

    @Override // j$.util.stream.AbstractC0203u0, j$.util.stream.w3
    public final int d() {
        if (this.k.characteristics().contains(EnumC0151h.UNORDERED)) {
            return R2.r;
        }
        return 0;
    }

    @Override // j$.util.stream.AbstractC0203u0
    public final O1 d0() {
        return new F1(this.j, this.i, this.h);
    }
}
