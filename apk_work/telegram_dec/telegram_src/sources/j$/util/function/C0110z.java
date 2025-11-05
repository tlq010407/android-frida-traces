package j$.util.function;

import java.util.function.IntBinaryOperator;

/* renamed from: j$.util.function.z, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0110z implements IntBinaryOperator {
    public final /* synthetic */ A a;

    private /* synthetic */ C0110z(A a) {
        this.a = a;
    }

    public static /* synthetic */ IntBinaryOperator a(A a) {
        if (a == null) {
            return null;
        }
        return a instanceof C0109y ? ((C0109y) a).a : new C0110z(a);
    }

    @Override // java.util.function.IntBinaryOperator
    public final /* synthetic */ int applyAsInt(int i, int i2) {
        return this.a.applyAsInt(i, i2);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        A a = this.a;
        if (obj instanceof C0110z) {
            obj = ((C0110z) obj).a;
        }
        return a.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
