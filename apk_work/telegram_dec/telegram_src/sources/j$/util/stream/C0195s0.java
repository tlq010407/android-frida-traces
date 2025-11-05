package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Supplier;

/* renamed from: j$.util.stream.s0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0195s0 implements w3 {
    final EnumC0191r0 a;
    final Supplier b;

    C0195s0(S2 s2, EnumC0191r0 enumC0191r0, Supplier supplier) {
        this.a = enumC0191r0;
        this.b = supplier;
    }

    @Override // j$.util.stream.w3
    public final Object a(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        AbstractC0188q0 abstractC0188q0 = (AbstractC0188q0) this.b.get();
        abstractC0127b.A0(spliterator, abstractC0188q0);
        return Boolean.valueOf(abstractC0188q0.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j$.util.stream.w3
    public final Object c(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        return (Boolean) new C0199t0(this, abstractC0127b, spliterator).invoke();
    }

    @Override // j$.util.stream.w3
    public final int d() {
        return R2.u | R2.r;
    }
}
