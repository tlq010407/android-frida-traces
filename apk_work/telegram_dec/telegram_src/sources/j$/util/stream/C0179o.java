package j$.util.stream;

import j$.util.function.Consumer;
import j$.util.function.Predicate;
import j$.util.function.ToDoubleFunction;
import j$.util.function.ToIntFunction;
import j$.util.function.ToLongFunction;
import java.util.HashSet;

/* renamed from: j$.util.stream.o, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0179o extends AbstractC0126a2 {
    public final /* synthetic */ int b;
    Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0179o(AbstractC0127b abstractC0127b, InterfaceC0142e2 interfaceC0142e2, int i) {
        super(interfaceC0142e2);
        this.b = i;
        this.c = abstractC0127b;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0179o(InterfaceC0142e2 interfaceC0142e2) {
        super(interfaceC0142e2);
        this.b = 0;
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final void r(Object obj) {
        switch (this.b) {
            case 0:
                if (((HashSet) this.c).contains(obj)) {
                    return;
                }
                ((HashSet) this.c).add(obj);
                this.a.r((InterfaceC0142e2) obj);
                return;
            case 1:
                ((Consumer) ((C0206v) this.c).n).r(obj);
                this.a.r((InterfaceC0142e2) obj);
                return;
            case 2:
                if (((Predicate) ((C0206v) this.c).n).test(obj)) {
                    this.a.r((InterfaceC0142e2) obj);
                    return;
                }
                return;
            case 3:
                this.a.r((InterfaceC0142e2) ((T1) this.c).n.apply(obj));
                return;
            case 4:
                this.a.accept(((ToIntFunction) ((C0210w) this.c).n).applyAsInt(obj));
                return;
            case 5:
                this.a.accept(((ToLongFunction) ((C0214x) this.c).n).applyAsLong(obj));
                return;
            case 6:
                this.a.accept(((ToDoubleFunction) ((C0202u) this.c).n).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((T1) this.c).n.apply(obj);
                if (stream != null) {
                    try {
                        ((Stream) stream.sequential()).forEach(this.a);
                    } catch (Throwable th) {
                        try {
                            stream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (stream != null) {
                    stream.close();
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC0126a2, j$.util.stream.InterfaceC0142e2
    public void m() {
        switch (this.b) {
            case 0:
                this.c = null;
                this.a.m();
                break;
            default:
                super.m();
                break;
        }
    }

    @Override // j$.util.stream.AbstractC0126a2, j$.util.stream.InterfaceC0142e2
    public void n(long j) {
        switch (this.b) {
            case 0:
                this.c = new HashSet();
                this.a.n(-1L);
                break;
            case 2:
                this.a.n(-1L);
                break;
            case 7:
                this.a.n(-1L);
                break;
            default:
                super.n(j);
                break;
        }
    }
}
