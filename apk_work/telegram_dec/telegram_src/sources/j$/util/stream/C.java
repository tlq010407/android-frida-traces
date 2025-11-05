package j$.util.stream;

import j$.util.C0085f;
import j$.util.C0114j;
import j$.util.C0118n;
import j$.util.InterfaceC0120p;
import j$.util.Spliterator;
import j$.util.function.BiConsumer;
import j$.util.function.C0086a;
import j$.util.function.C0093h;
import j$.util.function.C0097l;
import j$.util.function.C0100o;
import j$.util.function.C0102q;
import j$.util.function.C0104t;
import j$.util.function.C0106v;
import j$.util.function.InterfaceC0094i;
import j$.util.function.InterfaceC0098m;
import j$.util.function.InterfaceC0101p;
import j$.util.function.InterfaceC0105u;
import j$.util.function.Supplier;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.stream.DoubleStream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C implements E {
    public final /* synthetic */ DoubleStream a;

    private /* synthetic */ C(DoubleStream doubleStream) {
        this.a = doubleStream;
    }

    public static /* synthetic */ E f0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof D ? ((D) doubleStream).a : new C(doubleStream);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ double D(double d, InterfaceC0094i interfaceC0094i) {
        return this.a.reduce(d, C0093h.a(interfaceC0094i));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ Stream G(InterfaceC0101p interfaceC0101p) {
        return Stream.VivifiedWrapper.convert(this.a.mapToObj(C0100o.a(interfaceC0101p)));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E L(C0106v c0106v) {
        return f0(this.a.map(c0106v == null ? null : c0106v.a));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ IntStream Q(j$.util.function.r rVar) {
        return IntStream.VivifiedWrapper.convert(this.a.mapToInt(rVar == null ? null : rVar.a));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E S(C0102q c0102q) {
        return f0(this.a.filter(c0102q == null ? null : c0102q.a));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E a(InterfaceC0098m interfaceC0098m) {
        return f0(this.a.peek(C0097l.a(interfaceC0098m)));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ boolean a0(C0102q c0102q) {
        return this.a.anyMatch(c0102q == null ? null : c0102q.a);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0114j average() {
        return j$.util.A.q(this.a.average());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ Stream boxed() {
        return Stream.VivifiedWrapper.convert(this.a.boxed());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ void c0(InterfaceC0098m interfaceC0098m) {
        this.a.forEachOrdered(C0097l.a(interfaceC0098m));
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ boolean d0(C0102q c0102q) {
        return this.a.allMatch(c0102q == null ? null : c0102q.a);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E distinct() {
        return f0(this.a.distinct());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleStream doubleStream = this.a;
        if (obj instanceof C) {
            obj = ((C) obj).a;
        }
        return doubleStream.equals(obj);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0114j findAny() {
        return j$.util.A.q(this.a.findAny());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0114j findFirst() {
        return j$.util.A.q(this.a.findFirst());
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ void i(InterfaceC0098m interfaceC0098m) {
        this.a.forEach(C0097l.a(interfaceC0098m));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfDouble] */
    @Override // j$.util.stream.E
    public final /* synthetic */ InterfaceC0120p iterator() {
        return C0118n.b(this.a.iterator());
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ boolean j(C0102q c0102q) {
        return this.a.noneMatch(c0102q == null ? null : c0102q.a);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E limit(long j) {
        return f0(this.a.limit(j));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0114j max() {
        return j$.util.A.q(this.a.max());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0114j min() {
        return j$.util.A.q(this.a.min());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C0143f.f0(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ BaseStream parallel() {
        return C0143f.f0(this.a.parallel());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E parallel() {
        return f0(this.a.parallel());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E q(InterfaceC0101p interfaceC0101p) {
        return f0(this.a.flatMap(C0100o.a(interfaceC0101p)));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ LongStream r(InterfaceC0105u interfaceC0105u) {
        return C0160j0.f0(this.a.mapToLong(C0104t.a(interfaceC0105u)));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ BaseStream sequential() {
        return C0143f.f0(this.a.sequential());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E sequential() {
        return f0(this.a.sequential());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E skip(long j) {
        return f0(this.a.skip(j));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E sorted() {
        return f0(this.a.sorted());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfDouble] */
    @Override // j$.util.stream.E
    public final /* synthetic */ j$.util.D spliterator() {
        return j$.util.B.b(this.a.spliterator());
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.N.b(this.a.spliterator());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ double sum() {
        return this.a.sum();
    }

    @Override // j$.util.stream.E
    public final C0085f summaryStatistics() {
        this.a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ double[] toArray() {
        return this.a.toArray();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C0143f.f0(this.a.unordered());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0114j x(InterfaceC0094i interfaceC0094i) {
        return j$.util.A.q(this.a.reduce(C0093h.a(interfaceC0094i)));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ Object z(Supplier supplier, j$.util.function.f0 f0Var, BiConsumer biConsumer) {
        return this.a.collect(j$.util.function.q0.a(supplier), j$.util.function.e0.a(f0Var), C0086a.a(biConsumer));
    }
}
