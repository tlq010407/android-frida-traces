package j$.util.stream;

import j$.util.function.Consumer;
import j$.util.function.InterfaceC0094i;
import j$.util.function.InterfaceC0098m;

/* renamed from: j$.util.stream.y1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0220y1 implements O1, InterfaceC0130b2 {
    private double a;
    final /* synthetic */ double b;
    final /* synthetic */ InterfaceC0094i c;

    C0220y1(double d, InterfaceC0094i interfaceC0094i) {
        this.b = d;
        this.c = interfaceC0094i;
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        this.a = this.c.applyAsDouble(this.a, d);
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
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        r((Double) obj);
    }

    @Override // j$.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.function.Supplier
    public final Object get() {
        return Double.valueOf(this.a);
    }

    @Override // j$.util.stream.O1
    public final void h(O1 o1) {
        accept(((C0220y1) o1).a);
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void m() {
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        this.a = this.b;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ boolean q() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0130b2
    public final /* synthetic */ void r(Double d) {
        AbstractC0203u0.e(this, d);
    }
}
