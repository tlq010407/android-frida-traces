package j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class E2 extends AbstractC0197s2 {
    private Object[] d;
    private int e;

    E2(InterfaceC0142e2 interfaceC0142e2, Comparator comparator) {
        super(interfaceC0142e2, comparator);
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final void r(Object obj) {
        Object[] objArr = this.d;
        int i = this.e;
        this.e = i + 1;
        objArr[i] = obj;
    }

    @Override // j$.util.stream.AbstractC0126a2, j$.util.stream.InterfaceC0142e2
    public final void m() {
        int i = 0;
        Arrays.sort(this.d, 0, this.e, this.b);
        long j = this.e;
        InterfaceC0142e2 interfaceC0142e2 = this.a;
        interfaceC0142e2.n(j);
        if (this.c) {
            while (i < this.e && !interfaceC0142e2.q()) {
                interfaceC0142e2.r((InterfaceC0142e2) this.d[i]);
                i++;
            }
        } else {
            while (i < this.e) {
                interfaceC0142e2.r((InterfaceC0142e2) this.d[i]);
                i++;
            }
        }
        interfaceC0142e2.m();
        this.d = null;
    }

    @Override // j$.util.stream.AbstractC0126a2, j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.d = new Object[(int) j];
    }
}
