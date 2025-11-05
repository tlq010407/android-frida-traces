package j$.util.function;

import j$.util.function.BiFunction;
import j$.util.function.Function;

/* renamed from: j$.util.function.b, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0087b implements java.util.function.BiFunction {
    public final /* synthetic */ BiFunction a;

    private /* synthetic */ C0087b(BiFunction biFunction) {
        this.a = biFunction;
    }

    public static /* synthetic */ java.util.function.BiFunction a(BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof BiFunction.VivifiedWrapper ? ((BiFunction.VivifiedWrapper) biFunction).a : biFunction instanceof InterfaceC0091f ? C0090e.a((InterfaceC0091f) biFunction) : new C0087b(biFunction);
    }

    @Override // java.util.function.BiFunction
    public final /* synthetic */ java.util.function.BiFunction andThen(java.util.function.Function function) {
        return a(this.a.andThen(Function.VivifiedWrapper.convert(function)));
    }

    @Override // java.util.function.BiFunction
    public final /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.a.apply(obj, obj2);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        BiFunction biFunction = this.a;
        if (obj instanceof C0087b) {
            obj = ((C0087b) obj).a;
        }
        return biFunction.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
