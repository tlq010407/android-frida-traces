package j$.util.stream;

import j$.util.function.BiConsumer;
import j$.util.function.Function;
import j$.util.function.InterfaceC0091f;
import j$.util.function.Supplier;
import java.util.Set;

/* renamed from: j$.util.stream.m, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0171m implements Collector {
    private final Supplier a;
    private final BiConsumer b;
    private final InterfaceC0091f c;
    private final Function d;
    private final Set e;

    C0171m(Supplier supplier, BiConsumer biConsumer, InterfaceC0091f interfaceC0091f, Function function, Set set) {
        this.a = supplier;
        this.b = biConsumer;
        this.c = interfaceC0091f;
        this.d = function;
        this.e = set;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    C0171m(Supplier supplier, BiConsumer biConsumer, InterfaceC0091f interfaceC0091f, Set set) {
        this(supplier, biConsumer, interfaceC0091f, new C0167l(0), set);
        Set set2 = Collectors.a;
    }

    @Override // j$.util.stream.Collector
    public final BiConsumer accumulator() {
        return this.b;
    }

    @Override // j$.util.stream.Collector
    public final Set characteristics() {
        return this.e;
    }

    @Override // j$.util.stream.Collector
    public final InterfaceC0091f combiner() {
        return this.c;
    }

    @Override // j$.util.stream.Collector
    public final Function finisher() {
        return this.d;
    }

    @Override // j$.util.stream.Collector
    public final Supplier supplier() {
        return this.a;
    }
}
