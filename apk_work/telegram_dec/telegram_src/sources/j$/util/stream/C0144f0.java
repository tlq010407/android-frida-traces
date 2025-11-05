package j$.util.stream;

import j$.util.function.LongFunction;

/* renamed from: j$.util.stream.f0, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0144f0 extends Z1 {
    public final /* synthetic */ int b;
    final /* synthetic */ AbstractC0127b c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0144f0(AbstractC0127b abstractC0127b, InterfaceC0142e2 interfaceC0142e2, int i) {
        super(interfaceC0142e2);
        this.b = i;
        this.c = abstractC0127b;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void accept(long j) {
        switch (this.b) {
            case 0:
                this.a.accept(((j$.util.function.c0) ((C0214x) this.c).n).applyAsLong(j));
                return;
            case 1:
                this.a.r((InterfaceC0142e2) ((LongFunction) ((C0206v) this.c).n).apply(j));
                return;
            case 2:
                this.a.accept(((j$.util.function.Y) ((C0210w) this.c).n).a.applyAsInt(j));
                return;
            case 3:
                this.a.accept(((j$.util.function.X) ((C0202u) this.c).n).a.applyAsDouble(j));
                return;
            case 4:
                LongStream longStream = (LongStream) ((LongFunction) ((C0214x) this.c).n).apply(j);
                if (longStream != null) {
                    try {
                        longStream.sequential().c(new C0132c0(1, this));
                    } catch (Throwable th) {
                        try {
                            longStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (longStream != null) {
                    longStream.close();
                    return;
                }
                return;
            case 5:
                if (((j$.util.function.W) ((C0214x) this.c).n).a.test(j)) {
                    this.a.accept(j);
                    return;
                }
                return;
            default:
                ((j$.util.function.T) ((C0214x) this.c).n).accept(j);
                this.a.accept(j);
                return;
        }
    }

    @Override // j$.util.stream.Z1, j$.util.stream.InterfaceC0142e2
    public void n(long j) {
        switch (this.b) {
            case 4:
                this.a.n(-1L);
                break;
            case 5:
                this.a.n(-1L);
                break;
            default:
                super.n(j);
                break;
        }
    }
}
