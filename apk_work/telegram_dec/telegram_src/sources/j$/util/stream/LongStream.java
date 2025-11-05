package j$.util.stream;

import j$.util.C0113i;
import j$.util.C0114j;
import j$.util.C0116l;
import j$.util.InterfaceC0230x;
import j$.util.function.BiConsumer;
import j$.util.function.LongFunction;
import j$.util.function.Supplier;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public interface LongStream extends BaseStream<Long, LongStream> {
    boolean C(j$.util.function.W w);

    boolean E(j$.util.function.W w);

    LongStream K(j$.util.function.W w);

    void T(j$.util.function.T t);

    Object W(Supplier supplier, j$.util.function.l0 l0Var, BiConsumer biConsumer);

    E asDoubleStream();

    C0114j average();

    Stream boxed();

    void c(j$.util.function.T t);

    long count();

    LongStream distinct();

    C0116l findAny();

    C0116l findFirst();

    C0116l g(j$.util.function.O o);

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    InterfaceC0230x iterator();

    LongStream limit(long j);

    LongStream m(j$.util.function.T t);

    <U> Stream<U> mapToObj(LongFunction<? extends U> longFunction);

    C0116l max();

    C0116l min();

    LongStream n(LongFunction longFunction);

    E p(j$.util.function.X x);

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    LongStream parallel();

    boolean s(j$.util.function.W w);

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    LongStream sequential();

    LongStream skip(long j);

    LongStream sorted();

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    j$.util.J spliterator();

    long sum();

    C0113i summaryStatistics();

    LongStream t(j$.util.function.c0 c0Var);

    long[] toArray();

    long v(long j, j$.util.function.O o);

    IntStream y(j$.util.function.Y y);
}
