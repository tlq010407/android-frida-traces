package j$.util.stream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class V extends Y1 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ V(int i, InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
        this.b = i;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void accept(int i) {
        switch (this.b) {
            case 0:
                this.a.accept(i);
                break;
            default:
                this.a.accept(i);
                break;
        }
    }
}
