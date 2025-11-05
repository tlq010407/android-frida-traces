package j$.util.stream;

import j$.util.function.InterfaceC0091f;
import j$.util.function.InterfaceC0094i;

/* renamed from: j$.util.stream.z1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0224z1 extends AbstractC0203u0 {
    public final /* synthetic */ int h;
    final /* synthetic */ Object i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0224z1(S2 s2, Object obj, int i) {
        super(s2);
        this.h = i;
        this.i = obj;
    }

    @Override // j$.util.stream.AbstractC0203u0
    public final O1 d0() {
        switch (this.h) {
            case 0:
                return new A1((InterfaceC0094i) this.i);
            case 1:
                return new D1((InterfaceC0091f) this.i);
            case 2:
                return new J1((j$.util.function.A) this.i);
            default:
                return new N1((j$.util.function.O) this.i);
        }
    }
}
