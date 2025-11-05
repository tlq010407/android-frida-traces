package j$.util.stream;

import j$.util.function.BiConsumer;
import j$.util.function.Consumer;
import j$.util.function.IntFunction;
import j$.util.function.Supplier;
import j$.util.function.ToLongFunction;

/* renamed from: j$.util.stream.d0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0136d0 implements j$.util.function.c0, Supplier, j$.util.function.l0, BiConsumer, j$.util.function.O, Consumer, IntFunction, ToLongFunction {
    public final /* synthetic */ int a;

    public /* synthetic */ C0136d0(int i) {
        this.a = i;
    }

    private final void d(Object obj) {
    }

    private final void e(Object obj) {
    }

    private final void f(Object obj) {
    }

    @Override // j$.util.function.c0
    public j$.util.function.c0 a(j$.util.function.c0 c0Var) {
        c0Var.getClass();
        return new j$.util.function.Z(this, c0Var, 0);
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public void r(Object obj) {
        int i = this.a;
    }

    @Override // j$.util.function.l0
    public void accept(Object obj, long j) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + j;
    }

    @Override // j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        long[] jArr = (long[]) obj;
        long[] jArr2 = (long[]) obj2;
        jArr[0] = jArr[0] + jArr2[0];
        jArr[1] = jArr[1] + jArr2[1];
    }

    @Override // j$.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return BiConsumer.CC.$default$andThen(this, biConsumer);
    }

    @Override // j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
            case 5:
                break;
            case 12:
                break;
        }
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.function.IntFunction
    public Object apply(int i) {
        switch (this.a) {
            case 6:
                return new Object[i];
            case 7:
            default:
                return new Double[i];
            case 8:
                return new Object[i];
            case 9:
                return new Integer[i];
            case 10:
                return new Long[i];
        }
    }

    @Override // j$.util.function.c0
    public long applyAsLong(long j) {
        return 1L;
    }

    @Override // j$.util.function.O
    public long applyAsLong(long j, long j2) {
        return Math.max(j, j2);
    }

    @Override // j$.util.function.ToLongFunction
    public long applyAsLong(Object obj) {
        return 1L;
    }

    @Override // j$.util.function.c0
    public j$.util.function.c0 c(j$.util.function.c0 c0Var) {
        c0Var.getClass();
        return new j$.util.function.Z(this, c0Var, 1);
    }

    @Override // j$.util.function.Supplier
    public Object get() {
        return new long[2];
    }
}
