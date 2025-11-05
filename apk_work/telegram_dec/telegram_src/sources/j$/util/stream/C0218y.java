package j$.util.stream;

/* renamed from: j$.util.stream.y, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0218y extends A {
    public final /* synthetic */ int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0218y(AbstractC0127b abstractC0127b, int i, int i2) {
        super(abstractC0127b, i, 1);
        this.m = i2;
    }

    @Override // j$.util.stream.AbstractC0127b
    final InterfaceC0142e2 w0(int i, InterfaceC0142e2 interfaceC0142e2) {
        switch (this.m) {
            case 0:
                return interfaceC0142e2;
            case 1:
                return new V(1, interfaceC0142e2);
            default:
                return new C0140e0(interfaceC0142e2);
        }
    }
}
