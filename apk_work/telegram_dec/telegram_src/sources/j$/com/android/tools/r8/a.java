package j$.com.android.tools.r8;

import j$.util.concurrent.s;
import j$.util.function.B;
import j$.util.function.BiConsumer;
import j$.util.function.BiFunction;
import j$.util.function.C0095j;
import j$.util.function.E;
import j$.util.function.Function;
import j$.util.function.InterfaceC0098m;
import j$.util.function.P;
import j$.util.function.T;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import sun.misc.Unsafe;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public abstract /* synthetic */ class a {
    public static s a(BiFunction biFunction, Function function) {
        function.getClass();
        return new s(biFunction, function);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.j] */
    public static C0095j b(final InterfaceC0098m interfaceC0098m, final InterfaceC0098m interfaceC0098m2) {
        interfaceC0098m2.getClass();
        return new InterfaceC0098m() { // from class: j$.util.function.j
            @Override // j$.util.function.InterfaceC0098m
            public final void accept(double d) {
                interfaceC0098m.accept(d);
                interfaceC0098m2.accept(d);
            }

            @Override // j$.util.function.InterfaceC0098m
            public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m3) {
                return j$.com.android.tools.r8.a.b(this, interfaceC0098m3);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.B] */
    public static B c(final E e, final E e2) {
        e2.getClass();
        return new E() { // from class: j$.util.function.B
            @Override // j$.util.function.E
            public final void accept(int i) {
                e.accept(i);
                e2.accept(i);
            }

            @Override // j$.util.function.E
            public final /* synthetic */ E l(E e3) {
                return j$.com.android.tools.r8.a.c(this, e3);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.P] */
    public static P d(final T t, final T t2) {
        t2.getClass();
        return new T() { // from class: j$.util.function.P
            @Override // j$.util.function.T
            public final void accept(long j) {
                t.accept(j);
                t2.accept(j);
            }

            @Override // j$.util.function.T
            public final /* synthetic */ T f(T t3) {
                return j$.com.android.tools.r8.a.d(this, t3);
            }
        };
    }

    public static void e(ConcurrentMap concurrentMap, BiConsumer biConsumer) {
        biConsumer.getClass();
        for (Map.Entry entry : concurrentMap.entrySet()) {
            try {
                biConsumer.accept(entry.getKey(), entry.getValue());
            } catch (IllegalStateException unused) {
            }
        }
    }

    public static /* synthetic */ long f(long j) {
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(-1001L) + Long.numberOfLeadingZeros(1000L) + Long.numberOfLeadingZeros((-1) ^ j) + Long.numberOfLeadingZeros(j);
        if (iNumberOfLeadingZeros > 65) {
            return j * 1000;
        }
        if (iNumberOfLeadingZeros >= 64) {
            long j2 = j * 1000;
            if (j == 0 || j2 / j == 1000) {
                return j2;
            }
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ long g(long j, long j2) {
        long j3 = j + j2;
        if (((j2 ^ j) < 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ boolean h(Unsafe unsafe, Object obj, long j, Object obj2) {
        while (!unsafe.compareAndSwapObject(obj, j, (Object) null, obj2)) {
            if (unsafe.getObject(obj, j) != null) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ long i(long j, long j2) {
        long j3 = j % j2;
        if (j3 == 0) {
            return 0L;
        }
        return (((j ^ j2) >> 63) | 1) > 0 ? j3 : j3 + j2;
    }

    public static /* synthetic */ long j(long j, long j2) {
        long j3 = j / j2;
        return (j - (j2 * j3) != 0 && (((j ^ j2) >> 63) | 1) < 0) ? j3 - 1 : j3;
    }
}
