package j$.util.stream;

import java.util.Arrays;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class B2 extends AbstractC0186p2 {
    private double[] c;
    private int d;

    B2(InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        double[] dArr = this.c;
        int i = this.d;
        this.d = i + 1;
        dArr[i] = d;
    }

    @Override // j$.util.stream.X1, j$.util.stream.InterfaceC0142e2
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

    @Override // j$.util.stream.X1, j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = new double[(int) j];
    }
}
