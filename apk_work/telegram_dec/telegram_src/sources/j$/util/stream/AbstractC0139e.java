package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;

/* renamed from: j$.util.stream.e, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class AbstractC0139e extends CountedCompleter {
    static final int g = ForkJoinPool.getCommonPoolParallelism() << 2;
    protected final AbstractC0127b a;
    protected Spliterator b;
    protected long c;
    protected AbstractC0139e d;
    protected AbstractC0139e e;
    private Object f;

    protected AbstractC0139e(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        super(null);
        this.a = abstractC0127b;
        this.b = spliterator;
        this.c = 0L;
    }

    protected AbstractC0139e(AbstractC0139e abstractC0139e, Spliterator spliterator) {
        super(abstractC0139e);
        this.b = spliterator;
        this.a = abstractC0139e.a;
        this.c = abstractC0139e.c;
    }

    public static long f(long j) {
        long j2 = j / g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    protected abstract Object a();

    protected Object b() {
        return this.f;
    }

    protected final boolean c() {
        return ((AbstractC0139e) getCompleter()) == null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.b;
        long jEstimateSize = spliterator.estimateSize();
        long jF = this.c;
        if (jF == 0) {
            jF = f(jEstimateSize);
            this.c = jF;
        }
        boolean z = false;
        AbstractC0139e abstractC0139e = this;
        while (jEstimateSize > jF && (spliteratorTrySplit = spliterator.trySplit()) != null) {
            AbstractC0139e abstractC0139eD = abstractC0139e.d(spliteratorTrySplit);
            abstractC0139e.d = abstractC0139eD;
            AbstractC0139e abstractC0139eD2 = abstractC0139e.d(spliterator);
            abstractC0139e.e = abstractC0139eD2;
            abstractC0139e.setPendingCount(1);
            if (z) {
                spliterator = spliteratorTrySplit;
                abstractC0139e = abstractC0139eD;
                abstractC0139eD = abstractC0139eD2;
            } else {
                abstractC0139e = abstractC0139eD2;
            }
            z = !z;
            abstractC0139eD.fork();
            jEstimateSize = spliterator.estimateSize();
        }
        abstractC0139e.e(abstractC0139e.a());
        abstractC0139e.tryComplete();
    }

    protected abstract AbstractC0139e d(Spliterator spliterator);

    protected void e(Object obj) {
        this.f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.b = null;
        this.e = null;
        this.d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected final void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
