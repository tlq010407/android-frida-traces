package j$.util.stream;

import j$.util.function.BiConsumer;
import j$.util.function.Function;
import j$.util.function.InterfaceC0091f;
import j$.util.function.Supplier;
import java.util.Set;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public interface Collector<T, A, R> {
    BiConsumer accumulator();

    Set characteristics();

    InterfaceC0091f combiner();

    Function finisher();

    Supplier supplier();
}
