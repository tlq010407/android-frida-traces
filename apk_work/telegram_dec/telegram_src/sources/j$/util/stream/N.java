package j$.util.stream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class N extends Q implements InterfaceC0134c2 {
    final j$.util.function.E b;

    N(j$.util.function.E e, boolean z) {
        super(z);
        this.b = e;
    }

    @Override // j$.util.stream.Q, j$.util.stream.InterfaceC0142e2
    public final void accept(int i) {
        this.b.accept(i);
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        o((Integer) obj);
    }

    @Override // j$.util.function.E
    public final /* synthetic */ j$.util.function.E l(j$.util.function.E e) {
        return j$.com.android.tools.r8.a.c(this, e);
    }

    @Override // j$.util.stream.InterfaceC0134c2
    public final /* synthetic */ void o(Integer num) {
        AbstractC0203u0.g(this, num);
    }
}
