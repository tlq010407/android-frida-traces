package j$.util.stream;

import j$.util.function.Predicate;

/* renamed from: j$.util.stream.m0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0172m0 extends AbstractC0188q0 {
    final /* synthetic */ EnumC0191r0 c;
    final /* synthetic */ Predicate d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0172m0(Predicate predicate, EnumC0191r0 enumC0191r0) {
        super(enumC0191r0);
        this.c = enumC0191r0;
        this.d = predicate;
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final void r(Object obj) {
        if (this.a) {
            return;
        }
        boolean zTest = this.d.test(obj);
        EnumC0191r0 enumC0191r0 = this.c;
        if (zTest == enumC0191r0.a) {
            this.a = true;
            this.b = enumC0191r0.b;
        }
    }
}
