package j$.util.stream;

import j$.util.function.Consumer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class f3 implements InterfaceC0138d2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ j$.util.function.T b;

    public /* synthetic */ f3(j$.util.function.T t, int i) {
        this.a = i;
        this.b = t;
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
    public final /* synthetic */ void accept(double d) {
        switch (this.a) {
            case 0:
                AbstractC0203u0.b();
                throw null;
            default:
                AbstractC0203u0.b();
                throw null;
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
    public final void accept(long j) {
        switch (this.a) {
            case 0:
                ((L2) this.b).accept(j);
                break;
            default:
                this.b.accept(j);
                break;
        }
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        switch (this.a) {
            case 0:
                j((Long) obj);
                break;
            default:
                j((Long) obj);
                break;
        }
    }

    @Override // j$.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
        }
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.function.T
    public final /* synthetic */ j$.util.function.T f(j$.util.function.T t) {
        switch (this.a) {
        }
        return j$.com.android.tools.r8.a.d(this, t);
    }

    @Override // j$.util.stream.InterfaceC0138d2
    public final /* synthetic */ void j(Long l) {
        switch (this.a) {
            case 0:
                AbstractC0203u0.i(this, l);
                break;
            default:
                AbstractC0203u0.i(this, l);
                break;
        }
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
}
