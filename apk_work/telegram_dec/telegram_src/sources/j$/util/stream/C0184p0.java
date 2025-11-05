package j$.util.stream;

import j$.util.function.C0102q;
import j$.util.function.InterfaceC0098m;

/* renamed from: j$.util.stream.p0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0184p0 extends AbstractC0188q0 implements InterfaceC0130b2 {
    final /* synthetic */ EnumC0191r0 c;
    final /* synthetic */ C0102q d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0184p0(C0102q c0102q, EnumC0191r0 enumC0191r0) {
        super(enumC0191r0);
        this.c = enumC0191r0;
        this.d = c0102q;
    }

    @Override // j$.util.stream.AbstractC0188q0, j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        if (this.a) {
            return;
        }
        boolean zTest = this.d.a.test(d);
        EnumC0191r0 enumC0191r0 = this.c;
        if (zTest == enumC0191r0.a) {
            this.a = true;
            this.b = enumC0191r0.b;
        }
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        r((Double) obj);
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }

    @Override // j$.util.stream.InterfaceC0130b2
    public final /* synthetic */ void r(Double d) {
        AbstractC0203u0.e(this, d);
    }
}
