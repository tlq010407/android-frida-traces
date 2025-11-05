package j$.util.stream;

import j$.util.function.Function;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class T1 extends V1 {
    public final /* synthetic */ int m;
    final /* synthetic */ Function n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ T1(AbstractC0127b abstractC0127b, int i, Function function, int i2) {
        super(abstractC0127b, i, 1);
        this.m = i2;
        this.n = function;
    }

    @Override // j$.util.stream.AbstractC0127b
    final InterfaceC0142e2 w0(int i, InterfaceC0142e2 interfaceC0142e2) {
        switch (this.m) {
            case 0:
                return new C0179o(this, interfaceC0142e2, 3);
            default:
                return new C0179o(this, interfaceC0142e2, 7);
        }
    }
}
