package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import j$.util.function.IntFunction;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
interface G0 {
    G0 a(int i);

    long count();

    void forEach(Consumer consumer);

    void i(Object[] objArr, int i);

    int p();

    Object[] s(IntFunction intFunction);

    Spliterator spliterator();

    G0 t(long j, long j2, IntFunction intFunction);
}
