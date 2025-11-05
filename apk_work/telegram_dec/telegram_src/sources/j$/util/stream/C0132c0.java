package j$.util.stream;

/* renamed from: j$.util.stream.c0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0132c0 implements j$.util.function.T {
    public final /* synthetic */ int a;
    public final /* synthetic */ InterfaceC0142e2 b;

    public /* synthetic */ C0132c0(int i, InterfaceC0142e2 interfaceC0142e2) {
        this.a = i;
        this.b = interfaceC0142e2;
    }

    @Override // j$.util.function.T
    public final void accept(long j) {
        switch (this.a) {
            case 0:
                this.b.accept(j);
                break;
            default:
                ((C0144f0) this.b).a.accept(j);
                break;
        }
    }

    @Override // j$.util.function.T
    public final /* synthetic */ j$.util.function.T f(j$.util.function.T t) {
        switch (this.a) {
        }
        return j$.com.android.tools.r8.a.d(this, t);
    }
}
