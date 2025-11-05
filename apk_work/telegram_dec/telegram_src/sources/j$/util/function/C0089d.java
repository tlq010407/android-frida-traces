package j$.util.function;

import j$.util.function.BiFunction;
import java.util.function.BinaryOperator;

/* renamed from: j$.util.function.d, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0089d implements InterfaceC0091f {
    public final /* synthetic */ BinaryOperator a;

    private /* synthetic */ C0089d(BinaryOperator binaryOperator) {
        this.a = binaryOperator;
    }

    public static /* synthetic */ InterfaceC0091f a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C0090e ? ((C0090e) binaryOperator).a : new C0089d(binaryOperator);
    }

    @Override // j$.util.function.BiFunction
    public final /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction.VivifiedWrapper.convert(this.a.andThen(C0108x.a(function)));
    }

    @Override // j$.util.function.BiFunction
    public final /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.a.apply(obj, obj2);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        BinaryOperator binaryOperator = this.a;
        if (obj instanceof C0089d) {
            obj = ((C0089d) obj).a;
        }
        return binaryOperator.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
