package j$.util.stream;

/* renamed from: j$.util.stream.o0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0180o0 extends AbstractC0188q0 implements InterfaceC0138d2 {
    final /* synthetic */ EnumC0191r0 c;
    final /* synthetic */ j$.util.function.W d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0180o0(j$.util.function.W w, EnumC0191r0 enumC0191r0) {
        super(enumC0191r0);
        this.c = enumC0191r0;
        this.d = w;
    }

    @Override // j$.util.stream.AbstractC0188q0, j$.util.stream.InterfaceC0142e2
    public final void accept(long j) {
        if (this.a) {
            return;
        }
        boolean zTest = this.d.a.test(j);
        EnumC0191r0 enumC0191r0 = this.c;
        if (zTest == enumC0191r0.a) {
            this.a = true;
            this.b = enumC0191r0.b;
        }
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        j((Long) obj);
    }

    @Override // j$.util.function.T
    public final /* synthetic */ j$.util.function.T f(j$.util.function.T t) {
        return j$.com.android.tools.r8.a.d(this, t);
    }

    @Override // j$.util.stream.InterfaceC0138d2
    public final /* synthetic */ void j(Long l) {
        AbstractC0203u0.i(this, l);
    }
}
