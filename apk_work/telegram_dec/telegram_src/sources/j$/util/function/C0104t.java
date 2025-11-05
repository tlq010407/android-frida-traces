package j$.util.function;

import java.util.function.DoubleToLongFunction;

/* renamed from: j$.util.function.t, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0104t implements DoubleToLongFunction {
    public final /* synthetic */ InterfaceC0105u a;

    private /* synthetic */ C0104t(InterfaceC0105u interfaceC0105u) {
        this.a = interfaceC0105u;
    }

    public static /* synthetic */ DoubleToLongFunction a(InterfaceC0105u interfaceC0105u) {
        if (interfaceC0105u == null) {
            return null;
        }
        return interfaceC0105u instanceof C0103s ? ((C0103s) interfaceC0105u).a : new C0104t(interfaceC0105u);
    }

    @Override // java.util.function.DoubleToLongFunction
    public final /* synthetic */ long applyAsLong(double d) {
        return this.a.applyAsLong(d);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC0105u interfaceC0105u = this.a;
        if (obj instanceof C0104t) {
            obj = ((C0104t) obj).a;
        }
        return interfaceC0105u.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
