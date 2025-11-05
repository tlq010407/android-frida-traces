package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class T extends CountedCompleter {
    private Spliterator a;
    private final InterfaceC0142e2 b;
    private final AbstractC0127b c;
    private long d;

    T(T t, Spliterator spliterator) {
        super(t);
        this.a = spliterator;
        this.b = t.b;
        this.d = t.d;
        this.c = t.c;
    }

    T(AbstractC0127b abstractC0127b, Spliterator spliterator, InterfaceC0142e2 interfaceC0142e2) {
        super(null);
        this.b = interfaceC0142e2;
        this.c = abstractC0127b;
        this.a = spliterator;
        this.d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.a;
        long jEstimateSize = spliterator.estimateSize();
        long jF = this.d;
        if (jF == 0) {
            jF = AbstractC0139e.f(jEstimateSize);
            this.d = jF;
        }
        boolean zJ = R2.SHORT_CIRCUIT.j(this.c.p0());
        InterfaceC0142e2 interfaceC0142e2 = this.b;
        boolean z = false;
        T t = this;
        while (true) {
            if (zJ && interfaceC0142e2.q()) {
                break;
            }
            if (jEstimateSize <= jF || (spliteratorTrySplit = spliterator.trySplit()) == null) {
                break;
            }
            T t2 = new T(t, spliteratorTrySplit);
            t.addToPendingCount(1);
            if (z) {
                spliterator = spliteratorTrySplit;
            } else {
                T t3 = t;
                t = t2;
                t2 = t3;
            }
            z = !z;
            t.fork();
            t = t2;
            jEstimateSize = spliterator.estimateSize();
        }
        t.c.f0(spliterator, interfaceC0142e2);
        t.a = null;
        t.propagateCompletion();
    }
}
