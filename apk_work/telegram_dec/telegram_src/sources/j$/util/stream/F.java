package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Predicate;
import j$.util.function.Supplier;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class F implements w3 {
    final boolean a;
    final Object b;
    final Predicate c;
    final Supplier d;

    F(boolean z, S2 s2, Object obj, Predicate predicate, Supplier supplier) {
        this.a = z;
        this.b = obj;
        this.c = predicate;
        this.d = supplier;
    }

    @Override // j$.util.stream.w3
    public final Object a(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        x3 x3Var = (x3) this.d.get();
        abstractC0127b.A0(spliterator, x3Var);
        Object obj = x3Var.get();
        return obj != null ? obj : this.b;
    }

    @Override // j$.util.stream.w3
    public final Object c(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        return new L(this, abstractC0127b, spliterator).invoke();
    }

    @Override // j$.util.stream.w3
    public final int d() {
        return R2.u | (this.a ? 0 : R2.r);
    }
}
