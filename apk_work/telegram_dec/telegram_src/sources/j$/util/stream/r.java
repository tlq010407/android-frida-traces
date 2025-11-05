package j$.util.stream;

import j$.util.C0111g;
import j$.util.C0113i;
import j$.util.C0114j;
import j$.util.C0115k;
import j$.util.C0116l;
import j$.util.Optional;
import j$.util.function.BiConsumer;
import j$.util.function.IntFunction;
import j$.util.function.InterfaceC0094i;
import j$.util.function.InterfaceC0101p;
import j$.util.function.InterfaceC0105u;
import j$.util.function.LongFunction;
import j$.util.function.Predicate;
import j$.util.function.Supplier;
import j$.util.function.ToDoubleFunction;
import j$.util.function.ToIntFunction;
import j$.util.function.ToLongFunction;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class r implements InterfaceC0101p, InterfaceC0105u, ToDoubleFunction, IntFunction, InterfaceC0094i, Supplier, Predicate, ToIntFunction, j$.util.function.K, j$.util.function.A, j$.util.function.i0, BiConsumer, j$.util.function.l0, j$.util.function.O, ToLongFunction, LongFunction {
    public final /* synthetic */ int a;

    public /* synthetic */ r(int i) {
        this.a = i;
    }

    @Override // j$.util.function.i0
    public void accept(Object obj, int i) {
        switch (this.a) {
            case 16:
                ((C0111g) obj).accept(i);
                break;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + i;
                break;
        }
    }

    @Override // j$.util.function.l0
    public void accept(Object obj, long j) {
        ((C0113i) obj).accept(j);
    }

    @Override // j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 17:
                ((C0111g) obj).a((C0111g) obj2);
                break;
            case 22:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                jArr[0] = jArr[0] + jArr2[0];
                jArr[1] = jArr[1] + jArr2[1];
                break;
            default:
                ((C0113i) obj).a((C0113i) obj2);
                break;
        }
    }

    @Override // j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.a) {
        }
        return Predicate.CC.$default$and(this, predicate);
    }

    @Override // j$.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
            case 17:
                break;
            case 22:
                break;
        }
        return BiConsumer.CC.$default$andThen(this, biConsumer);
    }

    @Override // j$.util.function.InterfaceC0101p
    public Object apply(double d) {
        return Double.valueOf(d);
    }

    @Override // j$.util.function.IntFunction
    public Object apply(int i) {
        switch (this.a) {
            case 3:
                return new Double[i];
            case 10:
                return new Object[i];
            case 11:
                return new Integer[i];
            case 14:
                return Integer.valueOf(i);
            default:
                return new Long[i];
        }
    }

    @Override // j$.util.function.LongFunction
    public Object apply(long j) {
        return Long.valueOf(j);
    }

    @Override // j$.util.function.InterfaceC0094i
    public double applyAsDouble(double d, double d2) {
        return Math.max(d, d2);
    }

    @Override // j$.util.function.ToDoubleFunction
    public double applyAsDouble(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override // j$.util.function.A
    public int applyAsInt(int i, int i2) {
        switch (this.a) {
            case 15:
                return Math.min(i, i2);
            case 18:
                return i + i2;
            default:
                return Math.max(i, i2);
        }
    }

    @Override // j$.util.function.ToIntFunction
    public int applyAsInt(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override // j$.util.function.InterfaceC0105u
    public long applyAsLong(double d) {
        return 1L;
    }

    @Override // j$.util.function.K
    public long applyAsLong(int i) {
        return 1L;
    }

    @Override // j$.util.function.O
    public long applyAsLong(long j, long j2) {
        switch (this.a) {
            case 24:
                return j + j2;
            default:
                return Math.min(j, j2);
        }
    }

    @Override // j$.util.function.ToLongFunction
    public long applyAsLong(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override // j$.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 5:
                return new double[3];
            default:
                return new long[2];
        }
    }

    @Override // j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        switch (this.a) {
        }
        return Predicate.CC.$default$negate(this);
    }

    @Override // j$.util.function.Predicate
    public /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.a) {
        }
        return Predicate.CC.$default$or(this, predicate);
    }

    @Override // j$.util.function.Predicate
    public boolean test(Object obj) {
        switch (this.a) {
            case 6:
                return ((Optional) obj).isPresent();
            case 7:
                return ((C0114j) obj).c();
            case 8:
                return ((C0116l) obj).c();
            default:
                return ((C0115k) obj).c();
        }
    }
}
