package j$.util.function;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.function.l, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0097l implements DoubleConsumer {
    public final /* synthetic */ InterfaceC0098m a;

    private /* synthetic */ C0097l(InterfaceC0098m interfaceC0098m) {
        this.a = interfaceC0098m;
    }

    public static /* synthetic */ DoubleConsumer a(InterfaceC0098m interfaceC0098m) {
        if (interfaceC0098m == null) {
            return null;
        }
        return interfaceC0098m instanceof C0096k ? ((C0096k) interfaceC0098m).a : new C0097l(interfaceC0098m);
    }

    @Override // java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        this.a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return a(this.a.k(C0096k.a(doubleConsumer)));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC0098m interfaceC0098m = this.a;
        if (obj instanceof C0097l) {
            obj = ((C0097l) obj).a;
        }
        return interfaceC0098m.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
