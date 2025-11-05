package j$.util.function;

import java.util.function.DoubleBinaryOperator;

/* renamed from: j$.util.function.g, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0092g implements InterfaceC0094i {
    public final /* synthetic */ DoubleBinaryOperator a;

    private /* synthetic */ C0092g(DoubleBinaryOperator doubleBinaryOperator) {
        this.a = doubleBinaryOperator;
    }

    public static /* synthetic */ InterfaceC0094i a(DoubleBinaryOperator doubleBinaryOperator) {
        if (doubleBinaryOperator == null) {
            return null;
        }
        return doubleBinaryOperator instanceof C0093h ? ((C0093h) doubleBinaryOperator).a : new C0092g(doubleBinaryOperator);
    }

    @Override // j$.util.function.InterfaceC0094i
    public final /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.a.applyAsDouble(d, d2);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleBinaryOperator doubleBinaryOperator = this.a;
        if (obj instanceof C0092g) {
            obj = ((C0092g) obj).a;
        }
        return doubleBinaryOperator.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
