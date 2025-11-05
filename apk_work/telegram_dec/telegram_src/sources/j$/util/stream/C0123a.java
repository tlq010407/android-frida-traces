package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.BiConsumer;
import j$.util.function.Consumer;
import j$.util.function.IntFunction;
import j$.util.function.LongFunction;
import j$.util.function.Supplier;
import j$.util.function.ToLongFunction;
import java.util.List;
import java.util.Set;

/* renamed from: j$.util.stream.a, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0123a implements Supplier, BiConsumer, LongFunction, Consumer, InterfaceC0142e2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0123a(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    private final /* synthetic */ void a(long j) {
    }

    private final /* synthetic */ void c(long j) {
    }

    private final /* synthetic */ void d() {
    }

    private final /* synthetic */ void e() {
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public /* synthetic */ void accept(double d) {
        switch (this.a) {
            case 7:
                AbstractC0203u0.b();
                throw null;
            default:
                AbstractC0203u0.b();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public /* synthetic */ void accept(int i) {
        switch (this.a) {
            case 7:
                AbstractC0203u0.k();
                throw null;
            default:
                AbstractC0203u0.k();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public /* synthetic */ void accept(long j) {
        switch (this.a) {
            case 7:
                AbstractC0203u0.l();
                throw null;
            default:
                AbstractC0203u0.l();
                throw null;
        }
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public void r(Object obj) {
        switch (this.a) {
            case 3:
                ((InterfaceC0142e2) this.b).r((InterfaceC0142e2) obj);
                break;
            case 7:
                ((O2) this.b).r(obj);
                break;
            case 9:
                ((Consumer) this.b).r(obj);
                break;
            default:
                ((List) this.b).add(obj);
                break;
        }
    }

    @Override // j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        long[] jArr = (long[]) obj;
        Set set = Collectors.a;
        jArr[0] = ((ToLongFunction) this.b).applyAsLong(obj2) + jArr[0];
    }

    @Override // j$.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return BiConsumer.CC.$default$andThen(this, biConsumer);
    }

    @Override // j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
            case 3:
                break;
            case 7:
                break;
            case 9:
                break;
        }
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.function.LongFunction
    public Object apply(long j) {
        return AbstractC0203u0.D(j, (IntFunction) this.b);
    }

    public boolean f() {
        switch (this.a) {
            case 4:
                c3 c3Var = (c3) this.b;
                return c3Var.d.s(c3Var.e);
            case 5:
                e3 e3Var = (e3) this.b;
                return e3Var.d.s(e3Var.e);
            case 6:
                g3 g3Var = (g3) this.b;
                return g3Var.d.s(g3Var.e);
            default:
                u3 u3Var = (u3) this.b;
                return u3Var.d.s(u3Var.e);
        }
    }

    @Override // j$.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 0:
                return ((AbstractC0127b) this.b).r0();
            default:
                return (Spliterator) this.b;
        }
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public /* synthetic */ void m() {
        int i = this.a;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public /* synthetic */ void n(long j) {
        int i = this.a;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public /* synthetic */ boolean q() {
        switch (this.a) {
        }
        return false;
    }
}
