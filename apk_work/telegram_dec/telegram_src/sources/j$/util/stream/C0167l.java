package j$.util.stream;

import j$.util.C0085f;
import j$.util.C0111g;
import j$.util.C0113i;
import j$.util.function.BiConsumer;
import j$.util.function.Function;
import j$.util.function.IntFunction;
import j$.util.function.InterfaceC0094i;
import j$.util.function.LongFunction;
import j$.util.function.Supplier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* renamed from: j$.util.stream.l, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class C0167l implements Function, Supplier, j$.util.function.f0, BiConsumer, LongFunction, IntFunction, InterfaceC0094i {
    public final /* synthetic */ int a;

    public /* synthetic */ C0167l(int i) {
        this.a = i;
    }

    @Override // j$.util.function.f0
    public void accept(Object obj, double d) {
        switch (this.a) {
            case 3:
                double[] dArr = (double[]) obj;
                Collectors.a(dArr, d);
                dArr[2] = dArr[2] + d;
                break;
            case 4:
            default:
                ((C0085f) obj).accept(d);
                break;
            case 5:
                double[] dArr2 = (double[]) obj;
                dArr2[2] = dArr2[2] + 1.0d;
                Collectors.a(dArr2, d);
                dArr2[3] = dArr2[3] + d;
                break;
        }
    }

    @Override // j$.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 4:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                Collectors.a(dArr, dArr2[0]);
                Collectors.a(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                break;
            case 6:
                double[] dArr3 = (double[]) obj;
                double[] dArr4 = (double[]) obj2;
                Collectors.a(dArr3, dArr4[0]);
                Collectors.a(dArr3, dArr4[1]);
                dArr3[2] = dArr3[2] + dArr4[2];
                dArr3[3] = dArr3[3] + dArr4[3];
                break;
            case 16:
                ((Collection) obj).add(obj2);
                break;
            case 20:
                ((List) obj).add(obj2);
                break;
            case 22:
                ((Set) obj).add(obj2);
                break;
            case 24:
                ((LinkedHashSet) obj).add(obj2);
                break;
            case 25:
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
                break;
            default:
                ((C0085f) obj).a((C0085f) obj2);
                break;
        }
    }

    @Override // j$.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
            case 4:
                break;
            case 6:
                break;
            case 16:
                break;
            case 20:
                break;
            case 22:
                break;
            case 24:
                break;
            case 25:
                break;
        }
        return BiConsumer.CC.$default$andThen(this, biConsumer);
    }

    @Override // j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        switch (this.a) {
        }
        return Function.CC.$default$andThen(this, function);
    }

    @Override // j$.util.function.IntFunction
    public Object apply(int i) {
        return new Object[i];
    }

    @Override // j$.util.function.LongFunction
    public Object apply(long j) {
        switch (this.a) {
            case 11:
                return AbstractC0203u0.J(j);
            case 12:
                return AbstractC0203u0.R(j);
            default:
                return AbstractC0203u0.T(j);
        }
    }

    @Override // j$.util.function.Function
    public Object apply(Object obj) {
        switch (this.a) {
            case 0:
                Set set = Collectors.a;
                return obj;
            default:
                Set set2 = Collectors.a;
                return Long.valueOf(((long[]) obj)[0]);
        }
    }

    @Override // j$.util.function.InterfaceC0094i
    public double applyAsDouble(double d, double d2) {
        return Math.min(d, d2);
    }

    @Override // j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        switch (this.a) {
        }
        return Function.CC.$default$compose(this, function);
    }

    @Override // j$.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 1:
                Set set = Collectors.a;
                return new long[1];
            case 7:
                return new J();
            case 8:
                return new G();
            case 9:
                return new I();
            case 10:
                return new H();
            case 15:
                return new C0085f();
            case 17:
                return new C0111g();
            case 18:
                return new C0113i();
            case 19:
                return new ArrayList();
            case 21:
                return new HashSet();
            case 23:
                return new LinkedHashSet();
            default:
                return new double[4];
        }
    }
}
