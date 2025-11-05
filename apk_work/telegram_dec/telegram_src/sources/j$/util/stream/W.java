package j$.util.stream;

import j$.util.function.IntFunction;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class W extends Y1 {
    public final /* synthetic */ int b;
    final /* synthetic */ AbstractC0127b c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ W(AbstractC0127b abstractC0127b, InterfaceC0142e2 interfaceC0142e2, int i) {
        super(interfaceC0142e2);
        this.b = i;
        this.c = abstractC0127b;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void accept(int i) {
        switch (this.b) {
            case 0:
                ((j$.util.function.E) ((C0210w) this.c).n).accept(i);
                this.a.accept(i);
                return;
            case 1:
                this.a.accept(((j$.util.function.L) ((C0210w) this.c).n).a.applyAsInt(i));
                return;
            case 2:
                this.a.r((InterfaceC0142e2) ((IntFunction) ((C0206v) this.c).n).apply(i));
                return;
            case 3:
                this.a.accept(((j$.util.function.K) ((C0214x) this.c).n).applyAsLong(i));
                return;
            case 4:
                this.a.accept(((j$.util.function.H) ((C0202u) this.c).n).a.applyAsDouble(i));
                return;
            case 5:
                IntStream intStream = (IntStream) ((IntFunction) ((C0210w) this.c).n).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().J(new U(1, this));
                    } catch (Throwable th) {
                        try {
                            intStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (intStream != null) {
                    intStream.close();
                    return;
                }
                return;
            default:
                if (((j$.util.function.G) ((C0210w) this.c).n).a.test(i)) {
                    this.a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.Y1, j$.util.stream.InterfaceC0142e2
    public void n(long j) {
        switch (this.b) {
            case 5:
                this.a.n(-1L);
                break;
            case 6:
                this.a.n(-1L);
                break;
            default:
                super.n(j);
                break;
        }
    }
}
