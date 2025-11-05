package j$.util.stream;

/* renamed from: j$.util.stream.f2, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0146f2 extends AbstractC0126a2 {
    long b;
    long c;
    final /* synthetic */ C0150g2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0146f2(C0150g2 c0150g2, InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
        this.d = c0150g2;
        this.b = c0150g2.m;
        long j = c0150g2.n;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final void r(Object obj) {
        long j = this.b;
        if (j != 0) {
            this.b = j - 1;
            return;
        }
        long j2 = this.c;
        if (j2 > 0) {
            this.c = j2 - 1;
            this.a.r((InterfaceC0142e2) obj);
        }
    }

    @Override // j$.util.stream.AbstractC0126a2, j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        this.a.n(AbstractC0203u0.z(j, this.d.m, this.c));
    }

    @Override // j$.util.stream.AbstractC0126a2, j$.util.stream.InterfaceC0142e2
    public final boolean q() {
        return this.c == 0 || this.a.q();
    }
}
