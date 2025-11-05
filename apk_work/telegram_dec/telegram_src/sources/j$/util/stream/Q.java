package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class Q implements w3, x3 {
    private final boolean a;

    protected Q(boolean z) {
        this.a = z;
    }

    @Override // j$.util.stream.w3
    public final Object a(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        abstractC0127b.getClass();
        abstractC0127b.f0(spliterator, abstractC0127b.B0(this));
        return null;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC0203u0.b();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC0203u0.k();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC0203u0.l();
        throw null;
    }

    @Override // j$.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.w3
    public final Object c(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        (this.a ? new S(abstractC0127b, spliterator, this) : new T(abstractC0127b, spliterator, abstractC0127b.B0(this))).invoke();
        return null;
    }

    @Override // j$.util.stream.w3
    public final int d() {
        if (this.a) {
            return 0;
        }
        return R2.r;
    }

    @Override // j$.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void m() {
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void n(long j) {
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ boolean q() {
        return false;
    }
}
