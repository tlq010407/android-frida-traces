package j$.util.stream;

import j$.util.function.Function;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class R1 extends AbstractC0126a2 {
    public final /* synthetic */ int b = 2;
    Object c;
    final /* synthetic */ AbstractC0127b d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public R1(C0202u c0202u, InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
        this.d = c0202u;
        this.c = new C0187q(0, interfaceC0142e2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public R1(C0210w c0210w, InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
        this.d = c0210w;
        this.c = new U(0, interfaceC0142e2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public R1(C0214x c0214x, InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
        this.d = c0214x;
        this.c = new C0132c0(0, interfaceC0142e2);
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final void r(Object obj) {
        switch (this.b) {
            case 0:
                LongStream longStream = (LongStream) ((Function) ((C0214x) this.d).n).apply(obj);
                if (longStream != null) {
                    try {
                        longStream.sequential().c((C0132c0) this.c);
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
            case 1:
                IntStream intStream = (IntStream) ((Function) ((C0210w) this.d).n).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().J((U) this.c);
                    } catch (Throwable th3) {
                        try {
                            intStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
                if (intStream != null) {
                    intStream.close();
                    return;
                }
                return;
            default:
                E e = (E) ((Function) ((C0202u) this.d).n).apply(obj);
                if (e != null) {
                    try {
                        e.sequential().i((C0187q) this.c);
                    } catch (Throwable th5) {
                        try {
                            e.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (e != null) {
                    e.close();
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC0126a2, j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        switch (this.b) {
            case 0:
                this.a.n(-1L);
                break;
            case 1:
                this.a.n(-1L);
                break;
            default:
                this.a.n(-1L);
                break;
        }
    }
}
