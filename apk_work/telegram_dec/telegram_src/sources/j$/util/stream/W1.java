package j$.util.stream;

import j$.util.Optional;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.function.BiConsumer;
import j$.util.function.BiFunction;
import j$.util.function.C0088c;
import j$.util.function.Consumer;
import j$.util.function.Function;
import j$.util.function.IntFunction;
import j$.util.function.InterfaceC0091f;
import j$.util.function.Predicate;
import j$.util.function.Supplier;
import j$.util.function.ToDoubleFunction;
import j$.util.function.ToIntFunction;
import j$.util.function.ToLongFunction;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class W1 extends AbstractC0127b implements Stream {
    W1(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    W1(AbstractC0127b abstractC0127b, int i) {
        super(abstractC0127b, i);
    }

    @Override // j$.util.stream.Stream
    public final Stream M(Consumer consumer) {
        consumer.getClass();
        return new C0206v(this, consumer);
    }

    @Override // j$.util.stream.Stream
    public final boolean N(Predicate predicate) {
        return ((Boolean) i0(AbstractC0203u0.b0(predicate, EnumC0191r0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final LongStream P(Function function) {
        function.getClass();
        return new C0214x(this, R2.p | R2.n | R2.t, function, 6);
    }

    @Override // j$.util.stream.Stream
    public final E Z(ToDoubleFunction toDoubleFunction) {
        toDoubleFunction.getClass();
        return new C0202u(this, R2.p | R2.n, toDoubleFunction, 6);
    }

    @Override // j$.util.stream.Stream
    public final boolean anyMatch(Predicate predicate) {
        return ((Boolean) i0(AbstractC0203u0.b0(predicate, EnumC0191r0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final IntStream b(Function function) {
        function.getClass();
        return new C0210w(this, R2.p | R2.n | R2.t, function, 7);
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Collector collector) {
        Object objI0;
        if (isParallel() && collector.characteristics().contains(EnumC0151h.CONCURRENT) && (!q0() || collector.characteristics().contains(EnumC0151h.UNORDERED))) {
            objI0 = collector.supplier().get();
            forEach(new C0168l0(6, collector.accumulator(), objI0));
        } else {
            collector.getClass();
            Supplier supplier = collector.supplier();
            objI0 = i0(new E1(S2.REFERENCE, collector.combiner(), collector.accumulator(), supplier, collector));
        }
        return collector.characteristics().contains(EnumC0151h.IDENTITY_FINISH) ? objI0 : collector.finisher().apply(objI0);
    }

    @Override // j$.util.stream.Stream
    public final long count() {
        return ((AbstractC0156i0) mapToLong(new C0136d0(7))).sum();
    }

    @Override // j$.util.stream.Stream
    public final Stream distinct() {
        return new C0183p(this, R2.m | R2.t);
    }

    public void e(Consumer consumer) {
        consumer.getClass();
        i0(new P(consumer, true));
    }

    @Override // j$.util.stream.Stream
    public final Object e0(Object obj, InterfaceC0091f interfaceC0091f) {
        interfaceC0091f.getClass();
        return i0(new C0208v1(S2.REFERENCE, interfaceC0091f, interfaceC0091f, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Stream filter(Predicate predicate) {
        predicate.getClass();
        return new C0206v(this, R2.t, predicate, 4);
    }

    @Override // j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) i0(new F(false, S2.REFERENCE, Optional.empty(), new r(6), new C0167l(7)));
    }

    @Override // j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) i0(new F(true, S2.REFERENCE, Optional.empty(), new r(6), new C0167l(7)));
    }

    public void forEach(Consumer consumer) {
        consumer.getClass();
        i0(new P(consumer, false));
    }

    @Override // j$.util.stream.Stream
    public final Object h(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        supplier.getClass();
        biConsumer.getClass();
        biConsumer2.getClass();
        return i0(new C0208v1(S2.REFERENCE, biConsumer2, biConsumer, supplier, 3));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final Iterator iterator() {
        return Spliterators.i(spliterator());
    }

    @Override // j$.util.stream.Stream
    public final IntStream k(ToIntFunction toIntFunction) {
        toIntFunction.getClass();
        return new C0210w(this, R2.p | R2.n, toIntFunction, 6);
    }

    @Override // j$.util.stream.AbstractC0127b
    final G0 k0(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC0203u0.E(abstractC0127b, spliterator, z, intFunction);
    }

    @Override // j$.util.stream.Stream
    public final Stream l(Function function) {
        function.getClass();
        return new T1(this, R2.p | R2.n | R2.t, function, 1);
    }

    @Override // j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC0203u0.c0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.AbstractC0127b
    final void m0(Spliterator spliterator, InterfaceC0142e2 interfaceC0142e2) {
        while (!interfaceC0142e2.q() && spliterator.s(interfaceC0142e2)) {
        }
    }

    @Override // j$.util.stream.Stream
    public final Stream map(Function function) {
        function.getClass();
        return new T1(this, R2.p | R2.n, function, 0);
    }

    @Override // j$.util.stream.Stream
    public final LongStream mapToLong(ToLongFunction toLongFunction) {
        toLongFunction.getClass();
        return new C0214x(this, R2.p | R2.n, toLongFunction, 7);
    }

    @Override // j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        comparator.getClass();
        return o(new C0088c(comparator, 0));
    }

    @Override // j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        comparator.getClass();
        return o(new C0088c(comparator, 1));
    }

    @Override // j$.util.stream.AbstractC0127b
    final S2 n0() {
        return S2.REFERENCE;
    }

    @Override // j$.util.stream.Stream
    public final boolean noneMatch(Predicate predicate) {
        return ((Boolean) i0(AbstractC0203u0.b0(predicate, EnumC0191r0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final Optional o(InterfaceC0091f interfaceC0091f) {
        interfaceC0091f.getClass();
        return (Optional) i0(new C0224z1(S2.REFERENCE, interfaceC0091f, 1));
    }

    @Override // j$.util.stream.AbstractC0127b
    final InterfaceC0219y0 s0(long j, IntFunction intFunction) {
        return AbstractC0203u0.D(j, intFunction);
    }

    @Override // j$.util.stream.Stream
    public final Stream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC0203u0.c0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted() {
        return new C0225z2(this);
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C0225z2(this, comparator);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray() {
        return toArray(new C0136d0(6));
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return AbstractC0203u0.N(j0(intFunction), intFunction).s(intFunction);
    }

    @Override // j$.util.stream.Stream
    public final Object u(Object obj, BiFunction biFunction, InterfaceC0091f interfaceC0091f) {
        biFunction.getClass();
        interfaceC0091f.getClass();
        return i0(new C0208v1(S2.REFERENCE, interfaceC0091f, biFunction, obj, 2));
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !q0() ? this : new S1(this, R2.r);
    }

    @Override // j$.util.stream.Stream
    public final E w(Function function) {
        function.getClass();
        return new C0202u(this, R2.p | R2.n | R2.t, function, 7);
    }

    @Override // j$.util.stream.AbstractC0127b
    final Spliterator z0(AbstractC0127b abstractC0127b, Supplier supplier, boolean z) {
        return new u3(abstractC0127b, supplier, z);
    }
}
