package j$.util.function;

import java.util.function.DoubleBinaryOperator;

/* renamed from: j$.util.function.h, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0093h implements DoubleBinaryOperator {
    public final /* synthetic */ InterfaceC0094i a;

    private /* synthetic */ C0093h(InterfaceC0094i interfaceC0094i) {
        this.a = interfaceC0094i;
    }

    public static /* synthetic */ DoubleBinaryOperator a(InterfaceC0094i interfaceC0094i) {
        if (interfaceC0094i == null) {
            return null;
        }
        return interfaceC0094i instanceof C0092g ? ((C0092g) interfaceC0094i).a : new C0093h(interfaceC0094i);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public final /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.a.applyAsDouble(d, d2);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC0094i interfaceC0094i = this.a;
        if (obj instanceof C0093h) {
            obj = ((C0093h) obj).a;
        }
        return interfaceC0094i.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
