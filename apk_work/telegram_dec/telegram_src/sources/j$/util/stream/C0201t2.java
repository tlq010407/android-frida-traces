package j$.util.stream;

import java.util.Arrays;

/* renamed from: j$.util.stream.t2, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0201t2 extends AbstractC0186p2 {
    private H2 c;

    C0201t2(InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        this.c.accept(d);
    }

    @Override // j$.util.stream.X1, j$.util.stream.InterfaceC0142e2
    public final void m() {
        double[] dArr = (double[]) this.c.e();
        Arrays.sort(dArr);
        long length = dArr.length;
        InterfaceC0142e2 interfaceC0142e2 = this.a;
        interfaceC0142e2.n(length);
        int i = 0;
        if (this.b) {
            int length2 = dArr.length;
            while (i < length2) {
                double d = dArr[i];
                if (interfaceC0142e2.q()) {
                    break;
                }
                interfaceC0142e2.accept(d);
                i++;
            }
        } else {
            int length3 = dArr.length;
            while (i < length3) {
                interfaceC0142e2.accept(dArr[i]);
                i++;
            }
        }
        interfaceC0142e2.m();
    }

    @Override // j$.util.stream.X1, j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = j > 0 ? new H2((int) j) : new H2();
    }
}
