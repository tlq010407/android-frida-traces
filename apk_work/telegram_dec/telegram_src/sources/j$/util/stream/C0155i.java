package j$.util.stream;

import j$.util.function.BiConsumer;
import j$.util.function.C0089d;
import j$.util.function.Function;
import j$.util.function.InterfaceC0091f;
import j$.util.function.Supplier;
import java.util.Set;

/* renamed from: j$.util.stream.i, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0155i implements Collector {
    public final /* synthetic */ java.util.stream.Collector a;

    private /* synthetic */ C0155i(java.util.stream.Collector collector) {
        this.a = collector;
    }

    public static /* synthetic */ Collector a(java.util.stream.Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof C0159j ? ((C0159j) collector).a : new C0155i(collector);
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ BiConsumer accumulator() {
        return BiConsumer.VivifiedWrapper.convert(this.a.accumulator());
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ Set characteristics() {
        return this.a.characteristics();
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ InterfaceC0091f combiner() {
        return C0089d.a(this.a.combiner());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.Collector collector = this.a;
        if (obj instanceof C0155i) {
            obj = ((C0155i) obj).a;
        }
        return collector.equals(obj);
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ Function finisher() {
        return Function.VivifiedWrapper.convert(this.a.finisher());
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ Supplier supplier() {
        return j$.util.function.p0.a(this.a.supplier());
    }
}
