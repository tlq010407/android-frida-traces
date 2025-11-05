package j$.util.stream;

/* renamed from: j$.util.stream.j2, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0162j2 extends Z1 {
    long b;
    long c;
    final /* synthetic */ C0166k2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0162j2(C0166k2 c0166k2, InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
        this.d = c0166k2;
        this.b = c0166k2.m;
        long j = c0166k2.n;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void accept(long j) {
        long j2 = this.b;
        if (j2 != 0) {
            this.b = j2 - 1;
            return;
        }
        long j3 = this.c;
        if (j3 > 0) {
            this.c = j3 - 1;
            this.a.accept(j);
        }
    }

    @Override // j$.util.stream.Z1, j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        this.a.n(AbstractC0203u0.z(j, this.d.m, this.c));
    }

    @Override // j$.util.stream.Z1, j$.util.stream.InterfaceC0142e2
    public final boolean q() {
        return this.c == 0 || this.a.q();
    }
}
