package j$.util.function;

import java.util.function.DoubleFunction;

/* renamed from: j$.util.function.n, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0099n implements InterfaceC0101p {
    public final /* synthetic */ DoubleFunction a;

    private /* synthetic */ C0099n(DoubleFunction doubleFunction) {
        this.a = doubleFunction;
    }

    public static /* synthetic */ InterfaceC0101p a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C0100o ? ((C0100o) doubleFunction).a : new C0099n(doubleFunction);
    }

    @Override // j$.util.function.InterfaceC0101p
    public final /* synthetic */ Object apply(double d) {
        return this.a.apply(d);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleFunction doubleFunction = this.a;
        if (obj instanceof C0099n) {
            obj = ((C0099n) obj).a;
        }
        return doubleFunction.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
