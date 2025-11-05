package j$.util.function;

import java.util.function.DoubleFunction;

/* renamed from: j$.util.function.o, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0100o implements DoubleFunction {
    public final /* synthetic */ InterfaceC0101p a;

    private /* synthetic */ C0100o(InterfaceC0101p interfaceC0101p) {
        this.a = interfaceC0101p;
    }

    public static /* synthetic */ DoubleFunction a(InterfaceC0101p interfaceC0101p) {
        if (interfaceC0101p == null) {
            return null;
        }
        return interfaceC0101p instanceof C0099n ? ((C0099n) interfaceC0101p).a : new C0100o(interfaceC0101p);
    }

    @Override // java.util.function.DoubleFunction
    public final /* synthetic */ Object apply(double d) {
        return this.a.apply(d);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC0101p interfaceC0101p = this.a;
        if (obj instanceof C0100o) {
            obj = ((C0100o) obj).a;
        }
        return interfaceC0101p.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
