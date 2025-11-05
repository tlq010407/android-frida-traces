package j$.util.function;

import java.util.function.IntBinaryOperator;

/* renamed from: j$.util.function.y, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0109y implements A {
    public final /* synthetic */ IntBinaryOperator a;

    private /* synthetic */ C0109y(IntBinaryOperator intBinaryOperator) {
        this.a = intBinaryOperator;
    }

    public static /* synthetic */ A a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C0110z ? ((C0110z) intBinaryOperator).a : new C0109y(intBinaryOperator);
    }

    @Override // j$.util.function.A
    public final /* synthetic */ int applyAsInt(int i, int i2) {
        return this.a.applyAsInt(i, i2);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        IntBinaryOperator intBinaryOperator = this.a;
        if (obj instanceof C0109y) {
            obj = ((C0109y) obj).a;
        }
        return intBinaryOperator.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
