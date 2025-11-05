package j$.util.stream;

/* renamed from: j$.util.stream.h2, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0154h2 extends Y1 {
    long b;
    long c;
    final /* synthetic */ C0158i2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0154h2(C0158i2 c0158i2, InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
        this.d = c0158i2;
        this.b = c0158i2.m;
        long j = c0158i2.n;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void accept(int i) {
        long j = this.b;
        if (j != 0) {
            this.b = j - 1;
            return;
        }
        long j2 = this.c;
        if (j2 > 0) {
            this.c = j2 - 1;
            this.a.accept(i);
        }
    }

    @Override // j$.util.stream.Y1, j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        this.a.n(AbstractC0203u0.z(j, this.d.m, this.c));
    }

    @Override // j$.util.stream.Y1, j$.util.stream.InterfaceC0142e2
    public final boolean q() {
        return this.c == 0 || this.a.q();
    }
}
