package j$.util.stream;

import j$.util.C0114j;
import j$.util.function.InterfaceC0098m;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class G extends K implements InterfaceC0130b2 {
    G() {
    }

    @Override // j$.util.stream.K, j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        r(Double.valueOf(d));
    }

    @Override // j$.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return C0114j.d(((Double) this.b).doubleValue());
        }
        return null;
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }
}
