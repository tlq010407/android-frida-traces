package j$.util.stream;

import j$.util.C0085f;
import j$.util.C0114j;
import j$.util.InterfaceC0120p;
import j$.util.function.BiConsumer;
import j$.util.function.C0102q;
import j$.util.function.C0106v;
import j$.util.function.InterfaceC0094i;
import j$.util.function.InterfaceC0098m;
import j$.util.function.InterfaceC0101p;
import j$.util.function.InterfaceC0105u;
import j$.util.function.Supplier;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public interface E extends BaseStream {
    double D(double d, InterfaceC0094i interfaceC0094i);

    Stream G(InterfaceC0101p interfaceC0101p);

    E L(C0106v c0106v);

    IntStream Q(j$.util.function.r rVar);

    E S(C0102q c0102q);

    E a(InterfaceC0098m interfaceC0098m);

    boolean a0(C0102q c0102q);

    C0114j average();

    Stream boxed();

    void c0(InterfaceC0098m interfaceC0098m);

    long count();

    boolean d0(C0102q c0102q);

    E distinct();

    C0114j findAny();

    C0114j findFirst();

    void i(InterfaceC0098m interfaceC0098m);

    InterfaceC0120p iterator();

    boolean j(C0102q c0102q);

    E limit(long j);

    C0114j max();

    C0114j min();

    E parallel();

    E q(InterfaceC0101p interfaceC0101p);

    LongStream r(InterfaceC0105u interfaceC0105u);

    E sequential();

    E skip(long j);

    E sorted();

    j$.util.D spliterator();

    double sum();

    C0085f summaryStatistics();

    double[] toArray();

    C0114j x(InterfaceC0094i interfaceC0094i);

    Object z(Supplier supplier, j$.util.function.f0 f0Var, BiConsumer biConsumer);
}
