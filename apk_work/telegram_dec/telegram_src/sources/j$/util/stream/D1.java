package j$.util.stream;

import j$.util.Optional;
import j$.util.function.Consumer;
import j$.util.function.InterfaceC0091f;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class D1 implements O1 {
    private boolean a;
    private Object b;
    final /* synthetic */ InterfaceC0091f c;

    D1(InterfaceC0091f interfaceC0091f) {
        this.c = interfaceC0091f;
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final /* synthetic */ void accept(double d) {
        AbstractC0203u0.b();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void accept(int i) {
        AbstractC0203u0.k();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void accept(long j) {
        AbstractC0203u0.l();
        throw null;
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final void r(Object obj) {
        if (this.a) {
            this.a = false;
        } else {
            obj = this.c.apply(this.b, obj);
        }
        this.b = obj;
    }

    @Override // j$.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.function.Supplier
    public final Object get() {
        return this.a ? Optional.empty() : Optional.of(this.b);
    }

    @Override // j$.util.stream.O1
    public final void h(O1 o1) {
        D1 d1 = (D1) o1;
        if (d1.a) {
            return;
        }
        r(d1.b);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void m() {
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        this.a = true;
        this.b = null;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ boolean q() {
        return false;
    }
}
