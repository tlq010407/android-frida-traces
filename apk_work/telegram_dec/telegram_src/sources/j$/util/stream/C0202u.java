package j$.util.stream;

import j$.util.function.InterfaceC0098m;

/* renamed from: j$.util.stream.u, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0202u extends A {
    public final /* synthetic */ int m;
    final /* synthetic */ Object n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0202u(AbstractC0127b abstractC0127b, int i, Object obj, int i2) {
        super(abstractC0127b, i, 1);
        this.m = i2;
        this.n = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0202u(AbstractC0127b abstractC0127b, InterfaceC0098m interfaceC0098m) {
        super(abstractC0127b, 0, 1);
        this.m = 3;
        this.n = interfaceC0098m;
    }

    @Override // j$.util.stream.AbstractC0127b
    final InterfaceC0142e2 w0(int i, InterfaceC0142e2 interfaceC0142e2) {
        switch (this.m) {
            case 0:
                return new C0198t(this, interfaceC0142e2, 0);
            case 1:
                return new C0198t(this, interfaceC0142e2, 4);
            case 2:
                return new C0198t(this, interfaceC0142e2, 5);
            case 3:
                return new C0198t(this, interfaceC0142e2, 6);
            case 4:
                return new W(this, interfaceC0142e2, 4);
            case 5:
                return new C0144f0(this, interfaceC0142e2, 3);
            case 6:
                return new C0179o(this, interfaceC0142e2, 6);
            default:
                return new R1(this, interfaceC0142e2);
        }
    }
}
