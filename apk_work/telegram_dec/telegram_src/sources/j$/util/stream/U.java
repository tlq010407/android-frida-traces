package j$.util.stream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class U implements j$.util.function.E {
    public final /* synthetic */ int a;
    public final /* synthetic */ InterfaceC0142e2 b;

    public /* synthetic */ U(int i, InterfaceC0142e2 interfaceC0142e2) {
        this.a = i;
        this.b = interfaceC0142e2;
    }

    @Override // j$.util.function.E
    public final void accept(int i) {
        switch (this.a) {
            case 0:
                this.b.accept(i);
                break;
            default:
                ((W) this.b).a.accept(i);
                break;
        }
    }

    @Override // j$.util.function.E
    public final /* synthetic */ j$.util.function.E l(j$.util.function.E e) {
        switch (this.a) {
        }
        return j$.com.android.tools.r8.a.c(this, e);
    }
}
