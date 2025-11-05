package j$.util.function;

import j$.util.function.Function;
import java.util.function.BinaryOperator;

/* renamed from: j$.util.function.e, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0090e implements BinaryOperator {
    public final /* synthetic */ InterfaceC0091f a;

    private /* synthetic */ C0090e(InterfaceC0091f interfaceC0091f) {
        this.a = interfaceC0091f;
    }

    public static /* synthetic */ BinaryOperator a(InterfaceC0091f interfaceC0091f) {
        if (interfaceC0091f == null) {
            return null;
        }
        return interfaceC0091f instanceof C0089d ? ((C0089d) interfaceC0091f).a : new C0090e(interfaceC0091f);
    }

    @Override // java.util.function.BiFunction
    public final /* synthetic */ java.util.function.BiFunction andThen(java.util.function.Function function) {
        return C0087b.a(this.a.andThen(Function.VivifiedWrapper.convert(function)));
    }

    @Override // java.util.function.BiFunction
    public final /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.a.apply(obj, obj2);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC0091f interfaceC0091f = this.a;
        if (obj instanceof C0090e) {
            obj = ((C0090e) obj).a;
        }
        return interfaceC0091f.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
