package j$.util.stream;

/* renamed from: j$.util.stream.n0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0176n0 extends AbstractC0188q0 implements InterfaceC0134c2 {
    final /* synthetic */ EnumC0191r0 c;
    final /* synthetic */ j$.util.function.G d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0176n0(j$.util.function.G g, EnumC0191r0 enumC0191r0) {
        super(enumC0191r0);
        this.c = enumC0191r0;
        this.d = g;
    }

    @Override // j$.util.stream.AbstractC0188q0, j$.util.stream.InterfaceC0142e2
    public final void accept(int i) {
        if (this.a) {
            return;
        }
        boolean zTest = this.d.a.test(i);
        EnumC0191r0 enumC0191r0 = this.c;
        if (zTest == enumC0191r0.a) {
            this.a = true;
            this.b = enumC0191r0.b;
        }
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        o((Integer) obj);
    }

    @Override // j$.util.function.E
    public final /* synthetic */ j$.util.function.E l(j$.util.function.E e) {
        return j$.com.android.tools.r8.a.c(this, e);
    }

    @Override // j$.util.stream.InterfaceC0134c2
    public final /* synthetic */ void o(Integer num) {
        AbstractC0203u0.g(this, num);
    }
}
