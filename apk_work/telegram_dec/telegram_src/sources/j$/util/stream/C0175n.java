package j$.util.stream;

/* renamed from: j$.util.stream.n, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0175n extends AbstractC0126a2 {
    boolean b;
    Object c;

    C0175n(InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final void r(Object obj) {
        InterfaceC0142e2 interfaceC0142e2 = this.a;
        if (obj != null) {
            Object obj2 = this.c;
            if (obj2 != null && obj.equals(obj2)) {
                return;
            }
        } else {
            if (this.b) {
                return;
            }
            this.b = true;
            obj = null;
        }
        this.c = obj;
        interfaceC0142e2.r((InterfaceC0142e2) obj);
    }

    @Override // j$.util.stream.AbstractC0126a2, j$.util.stream.InterfaceC0142e2
    public final void m() {
        this.b = false;
        this.c = null;
        this.a.m();
    }

    @Override // j$.util.stream.AbstractC0126a2, j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        this.b = false;
        this.c = null;
        this.a.n(-1L);
    }
}
