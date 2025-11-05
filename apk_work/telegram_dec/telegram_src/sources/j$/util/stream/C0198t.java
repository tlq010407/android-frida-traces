package j$.util.stream;

import j$.util.function.C0102q;
import j$.util.function.C0106v;
import j$.util.function.InterfaceC0098m;
import j$.util.function.InterfaceC0101p;
import j$.util.function.InterfaceC0105u;

/* renamed from: j$.util.stream.t, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0198t extends X1 {
    public final /* synthetic */ int b;
    final /* synthetic */ AbstractC0127b c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0198t(AbstractC0127b abstractC0127b, InterfaceC0142e2 interfaceC0142e2, int i) {
        super(interfaceC0142e2);
        this.b = i;
        this.c = abstractC0127b;
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        switch (this.b) {
            case 0:
                this.a.accept(((C0106v) ((C0202u) this.c).n).a.applyAsDouble(d));
                return;
            case 1:
                this.a.r((InterfaceC0142e2) ((InterfaceC0101p) ((C0206v) this.c).n).apply(d));
                return;
            case 2:
                this.a.accept(((j$.util.function.r) ((C0210w) this.c).n).a.applyAsInt(d));
                return;
            case 3:
                this.a.accept(((InterfaceC0105u) ((C0214x) this.c).n).applyAsLong(d));
                return;
            case 4:
                E e = (E) ((InterfaceC0101p) ((C0202u) this.c).n).apply(d);
                if (e != null) {
                    try {
                        e.sequential().i(new C0187q(1, this));
                    } catch (Throwable th) {
                        try {
                            e.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (e != null) {
                    e.close();
                    return;
                }
                return;
            case 5:
                if (((C0102q) ((C0202u) this.c).n).a.test(d)) {
                    this.a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC0098m) ((C0202u) this.c).n).accept(d);
                this.a.accept(d);
                return;
        }
    }

    @Override // j$.util.stream.X1, j$.util.stream.InterfaceC0142e2
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
