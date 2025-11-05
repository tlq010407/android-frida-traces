package j$.util.stream;

import java.util.Arrays;

/* renamed from: j$.util.stream.u2, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0205u2 extends AbstractC0190q2 {
    private J2 c;

    C0205u2(InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void accept(int i) {
        this.c.accept(i);
    }

    @Override // j$.util.stream.Y1, j$.util.stream.InterfaceC0142e2
    public final void m() {
        int[] iArr = (int[]) this.c.e();
        Arrays.sort(iArr);
        long length = iArr.length;
        InterfaceC0142e2 interfaceC0142e2 = this.a;
        interfaceC0142e2.n(length);
        int i = 0;
        if (this.b) {
            int length2 = iArr.length;
            while (i < length2) {
                int i2 = iArr[i];
                if (interfaceC0142e2.q()) {
                    break;
                }
                interfaceC0142e2.accept(i2);
                i++;
            }
        } else {
            int length3 = iArr.length;
            while (i < length3) {
                interfaceC0142e2.accept(iArr[i]);
                i++;
            }
        }
        interfaceC0142e2.m();
    }

    @Override // j$.util.stream.Y1, j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = j > 0 ? new J2((int) j) : new J2();
    }
}
