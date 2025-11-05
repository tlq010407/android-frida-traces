package j$.util.stream;

import j$.util.function.Supplier;
import j$.util.function.ToLongFunction;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final class Collectors {
    static final Set a;
    static final Set b;
    static final Set c;

    static {
        EnumC0151h enumC0151h = EnumC0151h.CONCURRENT;
        EnumC0151h enumC0151h2 = EnumC0151h.UNORDERED;
        EnumC0151h enumC0151h3 = EnumC0151h.IDENTITY_FINISH;
        Collections.unmodifiableSet(EnumSet.of(enumC0151h, enumC0151h2, enumC0151h3));
        Collections.unmodifiableSet(EnumSet.of(enumC0151h, enumC0151h2));
        a = Collections.unmodifiableSet(EnumSet.of(enumC0151h3));
        b = Collections.unmodifiableSet(EnumSet.of(enumC0151h2, enumC0151h3));
        c = Collections.emptySet();
    }

    static void a(double[] dArr, double d) {
        double d2 = d - dArr[1];
        double d3 = dArr[0];
        double d4 = d3 + d2;
        dArr[1] = (d4 - d3) - d2;
        dArr[0] = d4;
    }

    public static <T> Collector<T, ?, Long> summingLong(ToLongFunction<? super T> toLongFunction) {
        return new C0171m(new C0167l(1), new C0123a(toLongFunction, 1), new C0163k(3), new C0167l(2), c);
    }

    public static <T, C extends Collection<T>> Collector<T, ?, C> toCollection(Supplier<C> supplier) {
        return new C0171m(supplier, new C0167l(16), new C0163k(0), a);
    }

    public static <T> Collector<T, ?, List<T>> toList() {
        return new C0171m(new C0167l(19), new C0167l(20), new C0163k(1), a);
    }

    public static <T> Collector<T, ?, Set<T>> toSet() {
        return new C0171m(new C0167l(21), new C0167l(22), new C0163k(2), b);
    }
}
