package j$.util.stream;

import j$.util.function.InterfaceC0098m;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class U2 extends X2 implements InterfaceC0098m {
    final double[] c = new double[128];

    U2() {
    }

    @Override // j$.util.stream.X2
    final void a(Object obj, long j) {
        InterfaceC0098m interfaceC0098m = (InterfaceC0098m) obj;
        for (int i = 0; i < j; i++) {
            interfaceC0098m.accept(this.c[i]);
        }
    }

    @Override // j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        int i = this.b;
        this.b = i + 1;
        this.c[i] = d;
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }
}
