package j$.util.function;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.function.k, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0096k implements InterfaceC0098m {
    public final /* synthetic */ DoubleConsumer a;

    private /* synthetic */ C0096k(DoubleConsumer doubleConsumer) {
        this.a = doubleConsumer;
    }

    public static /* synthetic */ InterfaceC0098m a(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C0097l ? ((C0097l) doubleConsumer).a : new C0096k(doubleConsumer);
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ void accept(double d) {
        this.a.accept(d);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleConsumer doubleConsumer = this.a;
        if (obj instanceof C0096k) {
            obj = ((C0096k) obj).a;
        }
        return doubleConsumer.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        return a(this.a.andThen(C0097l.a(interfaceC0098m)));
    }
}
