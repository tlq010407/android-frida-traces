package j$.util.function;

import java.util.function.DoubleToLongFunction;

/* renamed from: j$.util.function.s, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0103s implements InterfaceC0105u {
    public final /* synthetic */ DoubleToLongFunction a;

    private /* synthetic */ C0103s(DoubleToLongFunction doubleToLongFunction) {
        this.a = doubleToLongFunction;
    }

    public static /* synthetic */ InterfaceC0105u a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C0104t ? ((C0104t) doubleToLongFunction).a : new C0103s(doubleToLongFunction);
    }

    @Override // j$.util.function.InterfaceC0105u
    public final /* synthetic */ long applyAsLong(double d) {
        return this.a.applyAsLong(d);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleToLongFunction doubleToLongFunction = this.a;
        if (obj instanceof C0103s) {
            obj = ((C0103s) obj).a;
        }
        return doubleToLongFunction.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
