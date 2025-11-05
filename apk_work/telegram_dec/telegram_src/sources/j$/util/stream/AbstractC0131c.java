package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: j$.util.stream.c, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class AbstractC0131c extends AbstractC0139e {
    protected final AtomicReference h;
    protected volatile boolean i;

    protected AbstractC0131c(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        super(abstractC0127b, spliterator);
        this.h = new AtomicReference(null);
    }

    protected AbstractC0131c(AbstractC0131c abstractC0131c, Spliterator spliterator) {
        super(abstractC0131c, spliterator);
        this.h = abstractC0131c.h;
    }

    @Override // j$.util.stream.AbstractC0139e
    public final Object b() {
        if (!c()) {
            return super.b();
        }
        Object obj = this.h.get();
        return obj == null ? i() : obj;
    }

    @Override // j$.util.stream.AbstractC0139e, java.util.concurrent.CountedCompleter
    public final void compute() {
        Object objI;
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.b;
        long jEstimateSize = spliterator.estimateSize();
        long jF = this.c;
        if (jF == 0) {
            jF = AbstractC0139e.f(jEstimateSize);
            this.c = jF;
        }
        AtomicReference atomicReference = this.h;
        boolean z = false;
        AbstractC0131c abstractC0131c = this;
        while (true) {
            objI = atomicReference.get();
            if (objI != null) {
                break;
            }
            boolean z2 = abstractC0131c.i;
            if (!z2) {
                CountedCompleter<?> completer = abstractC0131c.getCompleter();
                while (true) {
                    AbstractC0131c abstractC0131c2 = (AbstractC0131c) ((AbstractC0139e) completer);
                    if (z2 || abstractC0131c2 == null) {
                        break;
                    }
                    z2 = abstractC0131c2.i;
                    completer = abstractC0131c2.getCompleter();
                }
            }
            if (z2) {
                objI = abstractC0131c.i();
                break;
            }
            if (jEstimateSize <= jF || (spliteratorTrySplit = spliterator.trySplit()) == null) {
                break;
            }
            AbstractC0131c abstractC0131c3 = (AbstractC0131c) abstractC0131c.d(spliteratorTrySplit);
            abstractC0131c.d = abstractC0131c3;
            AbstractC0131c abstractC0131c4 = (AbstractC0131c) abstractC0131c.d(spliterator);
            abstractC0131c.e = abstractC0131c4;
            abstractC0131c.setPendingCount(1);
            if (z) {
                spliterator = spliteratorTrySplit;
                abstractC0131c = abstractC0131c3;
                abstractC0131c3 = abstractC0131c4;
            } else {
                abstractC0131c = abstractC0131c4;
            }
            z = !z;
            abstractC0131c3.fork();
            jEstimateSize = spliterator.estimateSize();
        }
        objI = abstractC0131c.a();
        abstractC0131c.e(objI);
        abstractC0131c.tryComplete();
    }

    @Override // j$.util.stream.AbstractC0139e
    protected final void e(Object obj) {
        if (!c()) {
            super.e(obj);
        } else if (obj != null) {
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
            }
        }
    }

    protected void g() {
        this.i = true;
    }

    @Override // j$.util.stream.AbstractC0139e, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final Object getRawResult() {
        return b();
    }

    protected final void h() {
        AbstractC0131c abstractC0131c = this;
        for (AbstractC0131c abstractC0131c2 = (AbstractC0131c) ((AbstractC0139e) getCompleter()); abstractC0131c2 != null; abstractC0131c2 = (AbstractC0131c) ((AbstractC0139e) abstractC0131c2.getCompleter())) {
            if (abstractC0131c2.d == abstractC0131c) {
                AbstractC0131c abstractC0131c3 = (AbstractC0131c) abstractC0131c2.e;
                if (!abstractC0131c3.i) {
                    abstractC0131c3.g();
                }
            }
            abstractC0131c = abstractC0131c2;
        }
    }

    protected abstract Object i();
}
