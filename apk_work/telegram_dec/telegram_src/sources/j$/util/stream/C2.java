package j$.util.stream;

import java.util.Arrays;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C2 extends AbstractC0190q2 {
    private int[] c;
    private int d;

    C2(InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void accept(int i) {
        int[] iArr = this.c;
        int i2 = this.d;
        this.d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // j$.util.stream.Y1, j$.util.stream.InterfaceC0142e2
    public final void m() {
        int i = 0;
        Arrays.sort(this.c, 0, this.d);
        long j = this.d;
        InterfaceC0142e2 interfaceC0142e2 = this.a;
        interfaceC0142e2.n(j);
        if (this.b) {
            while (i < this.d && !interfaceC0142e2.q()) {
                interfaceC0142e2.accept(this.c[i]);
                i++;
            }
        } else {
            while (i < this.d) {
                interfaceC0142e2.accept(this.c[i]);
                i++;
            }
        }
        interfaceC0142e2.m();
        this.c = null;
    }

    @Override // j$.util.stream.Y1, j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = new int[(int) j];
    }
}
