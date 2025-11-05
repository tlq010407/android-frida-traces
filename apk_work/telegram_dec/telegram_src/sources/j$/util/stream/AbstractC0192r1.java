package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import java.util.concurrent.CountedCompleter;

/* renamed from: j$.util.stream.r1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class AbstractC0192r1 extends CountedCompleter implements InterfaceC0142e2 {
    protected final Spliterator a;
    protected final AbstractC0127b b;
    protected final long c;
    protected long d;
    protected long e;
    protected int f;
    protected int g;

    AbstractC0192r1(int i, Spliterator spliterator, AbstractC0127b abstractC0127b) {
        this.a = spliterator;
        this.b = abstractC0127b;
        this.c = AbstractC0139e.f(spliterator.estimateSize());
        this.d = 0L;
        this.e = i;
    }

    AbstractC0192r1(AbstractC0192r1 abstractC0192r1, Spliterator spliterator, long j, long j2, int i) {
        super(abstractC0192r1);
        this.a = spliterator;
        this.b = abstractC0192r1.b;
        this.c = abstractC0192r1.c;
        this.d = j;
        this.e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    abstract AbstractC0192r1 a(Spliterator spliterator, long j, long j2);

    public /* synthetic */ void accept(double d) {
        AbstractC0203u0.b();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC0203u0.k();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC0203u0.l();
        throw null;
    }

    @Override // j$.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.a;
        AbstractC0192r1 abstractC0192r1A = this;
        while (spliterator.estimateSize() > abstractC0192r1A.c && (spliteratorTrySplit = spliterator.trySplit()) != null) {
            abstractC0192r1A.setPendingCount(1);
            long jEstimateSize = spliteratorTrySplit.estimateSize();
            abstractC0192r1A.a(spliteratorTrySplit, abstractC0192r1A.d, jEstimateSize).fork();
            abstractC0192r1A = abstractC0192r1A.a(spliterator, abstractC0192r1A.d + jEstimateSize, abstractC0192r1A.e - jEstimateSize);
        }
        abstractC0192r1A.b.A0(spliterator, abstractC0192r1A);
        abstractC0192r1A.propagateCompletion();
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void m() {
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        long j2 = this.e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.d;
        this.f = i;
        this.g = i + ((int) j2);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ boolean q() {
        return false;
    }
}
