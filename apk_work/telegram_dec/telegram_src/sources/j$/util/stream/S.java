package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountedCompleter;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class S extends CountedCompleter {
    private final AbstractC0127b a;
    private Spliterator b;
    private final long c;
    private final ConcurrentHashMap d;
    private final InterfaceC0142e2 e;
    private final S f;
    private G0 g;

    S(S s, Spliterator spliterator, S s2) {
        super(s);
        this.a = s.a;
        this.b = spliterator;
        this.c = s.c;
        this.d = s.d;
        this.e = s.e;
        this.f = s2;
    }

    protected S(AbstractC0127b abstractC0127b, Spliterator spliterator, InterfaceC0142e2 interfaceC0142e2) {
        super(null);
        this.a = abstractC0127b;
        this.b = spliterator;
        this.c = AbstractC0139e.f(spliterator.estimateSize());
        this.d = new ConcurrentHashMap(Math.max(16, AbstractC0139e.g << 1));
        this.e = interfaceC0142e2;
        this.f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.b;
        long j = this.c;
        boolean z = false;
        S s = this;
        while (spliterator.estimateSize() > j && (spliteratorTrySplit = spliterator.trySplit()) != null) {
            S s2 = new S(s, spliteratorTrySplit, s.f);
            S s3 = new S(s, spliterator, s2);
            s.addToPendingCount(1);
            s3.addToPendingCount(1);
            s.d.put(s2, s3);
            if (s.f != null) {
                s2.addToPendingCount(1);
                if (s.d.replace(s.f, s, s2)) {
                    s.addToPendingCount(-1);
                } else {
                    s2.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = spliteratorTrySplit;
                s = s2;
                s2 = s3;
            } else {
                s = s3;
            }
            z = !z;
            s2.fork();
        }
        if (s.getPendingCount() > 0) {
            r rVar = new r(10);
            AbstractC0127b abstractC0127b = s.a;
            InterfaceC0219y0 interfaceC0219y0S0 = abstractC0127b.s0(abstractC0127b.l0(spliterator), rVar);
            s.a.A0(spliterator, interfaceC0219y0S0);
            s.g = interfaceC0219y0S0.b();
            s.b = null;
        }
        s.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        G0 g0 = this.g;
        if (g0 != null) {
            g0.forEach(this.e);
            this.g = null;
        } else {
            Spliterator spliterator = this.b;
            if (spliterator != null) {
                this.a.A0(spliterator, this.e);
                this.b = null;
            }
        }
        S s = (S) this.d.remove(this);
        if (s != null) {
            s.tryComplete();
        }
    }
}
