package j$.util.stream;

import j$.util.function.InterfaceC0098m;

/* renamed from: j$.util.stream.q, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0187q implements InterfaceC0098m {
    public final /* synthetic */ int a;
    public final /* synthetic */ InterfaceC0142e2 b;

    public /* synthetic */ C0187q(int i, InterfaceC0142e2 interfaceC0142e2) {
        this.a = i;
        this.b = interfaceC0142e2;
    }

    @Override // j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        switch (this.a) {
            case 0:
                this.b.accept(d);
                break;
            default:
                ((C0198t) this.b).a.accept(d);
                break;
        }
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        switch (this.a) {
        }
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }
}
