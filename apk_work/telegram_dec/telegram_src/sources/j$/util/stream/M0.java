package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.InterfaceC0091f;
import j$.util.function.LongFunction;
import java.util.concurrent.CountedCompleter;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
class M0 extends AbstractC0139e {
    protected final AbstractC0127b h;
    protected final LongFunction i;
    protected final InterfaceC0091f j;

    M0(M0 m0, Spliterator spliterator) {
        super(m0, spliterator);
        this.h = m0.h;
        this.i = m0.i;
        this.j = m0.j;
    }

    M0(AbstractC0127b abstractC0127b, Spliterator spliterator, LongFunction longFunction, InterfaceC0091f interfaceC0091f) {
        super(abstractC0127b, spliterator);
        this.h = abstractC0127b;
        this.i = longFunction;
        this.j = interfaceC0091f;
    }

    @Override // j$.util.stream.AbstractC0139e
    protected final Object a() {
        InterfaceC0219y0 interfaceC0219y0 = (InterfaceC0219y0) this.i.apply(this.h.l0(this.b));
        this.h.A0(this.b, interfaceC0219y0);
        return interfaceC0219y0.b();
    }

    @Override // j$.util.stream.AbstractC0139e
    protected final AbstractC0139e d(Spliterator spliterator) {
        return new M0(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0139e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC0139e abstractC0139e = this.d;
        if (abstractC0139e != null) {
            e((G0) this.j.apply((G0) ((M0) abstractC0139e).b(), (G0) ((M0) this.e).b()));
        }
        super.onCompletion(countedCompleter);
    }
}
