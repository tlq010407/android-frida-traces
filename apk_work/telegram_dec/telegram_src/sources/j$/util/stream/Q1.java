package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class Q1 extends AbstractC0139e {
    private final AbstractC0203u0 h;

    Q1(Q1 q1, Spliterator spliterator) {
        super(q1, spliterator);
        this.h = q1.h;
    }

    Q1(AbstractC0203u0 abstractC0203u0, AbstractC0127b abstractC0127b, Spliterator spliterator) {
        super(abstractC0127b, spliterator);
        this.h = abstractC0203u0;
    }

    @Override // j$.util.stream.AbstractC0139e
    protected final Object a() {
        AbstractC0127b abstractC0127b = this.a;
        O1 o1D0 = this.h.d0();
        abstractC0127b.A0(this.b, o1D0);
        return o1D0;
    }

    @Override // j$.util.stream.AbstractC0139e
    protected final AbstractC0139e d(Spliterator spliterator) {
        return new Q1(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0139e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC0139e abstractC0139e = this.d;
        if (abstractC0139e != null) {
            O1 o1 = (O1) ((Q1) abstractC0139e).b();
            o1.h((O1) ((Q1) this.e).b());
            e(o1);
        }
        super.onCompletion(countedCompleter);
    }
}
