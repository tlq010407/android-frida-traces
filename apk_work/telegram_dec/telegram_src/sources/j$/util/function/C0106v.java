package j$.util.function;

import java.util.function.DoubleUnaryOperator;

/* renamed from: j$.util.function.v, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0106v {
    public final /* synthetic */ DoubleUnaryOperator a;

    private /* synthetic */ C0106v(DoubleUnaryOperator doubleUnaryOperator) {
        this.a = doubleUnaryOperator;
    }

    public static /* synthetic */ C0106v a(DoubleUnaryOperator doubleUnaryOperator) {
        if (doubleUnaryOperator == null) {
            return null;
        }
        return new C0106v(doubleUnaryOperator);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleUnaryOperator doubleUnaryOperator = this.a;
        if (obj instanceof C0106v) {
            obj = ((C0106v) obj).a;
        }
        return doubleUnaryOperator.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
