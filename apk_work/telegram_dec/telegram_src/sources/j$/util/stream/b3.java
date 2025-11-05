package j$.util.stream;

import j$.util.function.Consumer;
import j$.util.function.InterfaceC0098m;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class b3 implements InterfaceC0130b2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ InterfaceC0098m b;

    public /* synthetic */ b3(InterfaceC0098m interfaceC0098m, int i) {
        this.a = i;
        this.b = interfaceC0098m;
    }

    private final /* synthetic */ void a(long j) {
    }

    private final /* synthetic */ void c(long j) {
    }

    private final /* synthetic */ void d() {
    }

    private final /* synthetic */ void e() {
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        switch (this.a) {
            case 0:
                ((H2) this.b).accept(d);
                break;
            default:
                this.b.accept(d);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void accept(int i) {
        switch (this.a) {
            case 0:
                AbstractC0203u0.k();
                throw null;
            default:
                AbstractC0203u0.k();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void accept(long j) {
        switch (this.a) {
            case 0:
                AbstractC0203u0.l();
                throw null;
            default:
                AbstractC0203u0.l();
                throw null;
        }
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        switch (this.a) {
            case 0:
                r((Double) obj);
                break;
            default:
                r((Double) obj);
                break;
        }
    }

    @Override // j$.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
        }
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        switch (this.a) {
        }
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void m() {
        int i = this.a;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void n(long j) {
        int i = this.a;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ boolean q() {
        switch (this.a) {
        }
        return false;
    }

    @Override // j$.util.stream.InterfaceC0130b2
    public final /* synthetic */ void r(Double d) {
        switch (this.a) {
            case 0:
                AbstractC0203u0.e(this, d);
                break;
            default:
                AbstractC0203u0.e(this, d);
                break;
        }
    }
}
