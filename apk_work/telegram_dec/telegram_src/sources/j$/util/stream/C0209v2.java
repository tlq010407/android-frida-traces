package j$.util.stream;

import java.util.Arrays;

/* renamed from: j$.util.stream.v2, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0209v2 extends AbstractC0193r2 {
    private L2 c;

    C0209v2(InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void accept(long j) {
        this.c.accept(j);
    }

    @Override // j$.util.stream.Z1, j$.util.stream.InterfaceC0142e2
    public final void m() {
        long[] jArr = (long[]) this.c.e();
        Arrays.sort(jArr);
        long length = jArr.length;
        InterfaceC0142e2 interfaceC0142e2 = this.a;
        interfaceC0142e2.n(length);
        int i = 0;
        if (this.b) {
            int length2 = jArr.length;
            while (i < length2) {
                long j = jArr[i];
                if (interfaceC0142e2.q()) {
                    break;
                }
                interfaceC0142e2.accept(j);
                i++;
            }
        } else {
            int length3 = jArr.length;
            while (i < length3) {
                interfaceC0142e2.accept(jArr[i]);
                i++;
            }
        }
        interfaceC0142e2.m();
    }

    @Override // j$.util.stream.Z1, j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = j > 0 ? new L2((int) j) : new L2();
    }
}
