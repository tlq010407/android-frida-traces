package j$.util.function;

import java.util.function.DoublePredicate;

/* renamed from: j$.util.function.q, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0102q {
    public final /* synthetic */ DoublePredicate a;

    private /* synthetic */ C0102q(DoublePredicate doublePredicate) {
        this.a = doublePredicate;
    }

    public static /* synthetic */ C0102q a(DoublePredicate doublePredicate) {
        if (doublePredicate == null) {
            return null;
        }
        return new C0102q(doublePredicate);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoublePredicate doublePredicate = this.a;
        if (obj instanceof C0102q) {
            obj = ((C0102q) obj).a;
        }
        return doublePredicate.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
