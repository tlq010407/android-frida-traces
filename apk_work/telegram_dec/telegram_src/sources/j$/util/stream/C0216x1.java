package j$.util.stream;

import j$.util.function.InterfaceC0094i;

/* renamed from: j$.util.stream.x1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0216x1 extends AbstractC0203u0 {
    final /* synthetic */ InterfaceC0094i h;
    final /* synthetic */ double i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0216x1(S2 s2, InterfaceC0094i interfaceC0094i, double d) {
        super(s2);
        this.h = interfaceC0094i;
        this.i = d;
    }

    @Override // j$.util.stream.AbstractC0203u0
    public final O1 d0() {
        return new C0220y1(this.i, this.h);
    }
}
