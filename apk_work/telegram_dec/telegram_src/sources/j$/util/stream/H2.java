package j$.util.stream;

import j$.util.Spliterators;
import j$.util.function.Consumer;
import j$.util.function.InterfaceC0098m;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
class H2 extends N2 implements InterfaceC0098m {
    H2() {
    }

    H2(int i) {
        super(i);
    }

    @Override // j$.util.stream.N2, java.lang.Iterable
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public j$.util.D spliterator() {
        return new G2(this, 0, this.c, 0, this.b);
    }

    @Override // j$.util.function.InterfaceC0098m
    public void accept(double d) {
        z();
        double[] dArr = (double[]) this.e;
        int i = this.b;
        this.b = i + 1;
        dArr[i] = d;
    }

    @Override // j$.util.stream.N2
    public final Object c(int i) {
        return new double[i];
    }

    public final void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC0098m) {
            g((InterfaceC0098m) consumer);
        } else {
            if (z3.a) {
                z3.a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
                throw null;
            }
            j$.util.A.b((G2) spliterator(), consumer);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return Spliterators.f(spliterator());
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }

    public final String toString() {
        double[] dArr = (double[]) e();
        if (dArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.c), Arrays.toString(dArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // j$.util.stream.N2
    protected final void u(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC0098m interfaceC0098m = (InterfaceC0098m) obj2;
        while (i < i2) {
            interfaceC0098m.accept(dArr[i]);
            i++;
        }
    }

    @Override // j$.util.stream.N2
    protected final int v(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // j$.util.stream.N2
    protected final Object[] y() {
        return new double[8][];
    }
}
