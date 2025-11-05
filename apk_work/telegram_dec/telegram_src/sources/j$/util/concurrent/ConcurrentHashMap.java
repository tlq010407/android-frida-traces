package j$.util.concurrent;

import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import j$.util.function.BiConsumer;
import j$.util.function.BiFunction;
import j$.util.function.Function;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import org.telegram.messenger.LiteMode;
import sun.misc.Unsafe;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, t {
    private static final int g = (1 << (32 - 16)) - 1;
    private static final int h = 32 - 16;
    static final int i = Runtime.getRuntime().availableProcessors();
    private static final Unsafe j;
    private static final long k;
    private static final long l;
    private static final long m;
    private static final long n;
    private static final long o;
    private static final long p;
    private static final int q;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;
    volatile transient k[] a;
    private volatile transient k[] b;
    private volatile transient long baseCount;
    private volatile transient c[] c;
    private volatile transient int cellsBusy;
    private transient h d;
    private transient r e;
    private transient h f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    static {
        ObjectStreamField objectStreamField = new ObjectStreamField("segments", m[].class);
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{objectStreamField, new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        try {
            Unsafe unsafeC = u.c();
            j = unsafeC;
            k = unsafeC.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("sizeCtl"));
            l = unsafeC.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("transferIndex"));
            m = unsafeC.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("baseCount"));
            n = unsafeC.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("cellsBusy"));
            o = unsafeC.objectFieldOffset(c.class.getDeclaredField("value"));
            p = unsafeC.arrayBaseOffset(k[].class);
            int iArrayIndexScale = unsafeC.arrayIndexScale(k[].class);
            if (((iArrayIndexScale - 1) & iArrayIndexScale) != 0) {
                throw new Error("data type scale not a power of two");
            }
            q = 31 - Integer.numberOfLeadingZeros(iArrayIndexScale);
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    public ConcurrentHashMap() {
    }

    public ConcurrentHashMap(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException();
        }
        this.sizeCtl = i2 >= 536870912 ? 1073741824 : m(i2 + (i2 >>> 1) + 1);
    }

    public ConcurrentHashMap(int i2, float f, int i3) {
        if (f <= BitmapDescriptorFactory.HUE_RED || i2 < 0 || i3 <= 0) {
            throw new IllegalArgumentException();
        }
        double d = (i2 < i3 ? i3 : i2) / f;
        Double.isNaN(d);
        long j2 = (long) (d + 1.0d);
        this.sizeCtl = j2 >= 1073741824 ? 1073741824 : m((int) j2);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void a(long j2, int i2) {
        int length;
        c cVar;
        long jK;
        k[] kVarArr;
        int length2;
        k[] kVarArr2;
        c[] cVarArr = this.c;
        if (cVarArr == null) {
            Unsafe unsafe = j;
            long j3 = m;
            long j4 = this.baseCount;
            jK = j4 + j2;
            if (!unsafe.compareAndSwapLong(this, j3, j4, jK)) {
                boolean z = true;
                if (cVarArr != null && (length = cVarArr.length - 1) >= 0 && (cVar = cVarArr[length & ThreadLocalRandom.b()]) != null) {
                    Unsafe unsafe2 = j;
                    long j5 = o;
                    long j6 = cVar.value;
                    boolean zCompareAndSwapLong = unsafe2.compareAndSwapLong(cVar, j5, j6, j6 + j2);
                    if (!zCompareAndSwapLong) {
                        z = zCompareAndSwapLong;
                    } else if (i2 <= 1) {
                        return;
                    } else {
                        jK = k();
                    }
                }
                d(j2, z);
                return;
            }
        }
        if (i2 < 0) {
            return;
        }
        while (true) {
            int i3 = this.sizeCtl;
            if (jK < i3 || (kVarArr = this.a) == null || (length2 = kVarArr.length) >= 1073741824) {
                return;
            }
            int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(length2) | LiteMode.FLAG_CHAT_SCALE;
            int i4 = h;
            if (i3 < 0) {
                if ((i3 >>> i4) != iNumberOfLeadingZeros || i3 == iNumberOfLeadingZeros + 1 || i3 == iNumberOfLeadingZeros + g || (kVarArr2 = this.b) == null || this.transferIndex <= 0) {
                    return;
                }
                if (j.compareAndSwapInt(this, k, i3, i3 + 1)) {
                    n(kVarArr, kVarArr2);
                }
            } else if (j.compareAndSwapInt(this, k, i3, (iNumberOfLeadingZeros << i4) + 2)) {
                n(kVarArr, null);
            }
            jK = k();
        }
    }

    static final boolean b(k[] kVarArr, int i2, k kVar) {
        return j$.com.android.tools.r8.a.h(j, kVarArr, (i2 << q) + p, kVar);
    }

    static Class c(Object obj) {
        Type[] actualTypeArguments;
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Class<?> cls = obj.getClass();
        if (cls == String.class) {
            return cls;
        }
        Type[] genericInterfaces = cls.getGenericInterfaces();
        if (genericInterfaces == null) {
            return null;
        }
        for (Type type : genericInterfaces) {
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                if (parameterizedType.getRawType() == Comparable.class && (actualTypeArguments = parameterizedType.getActualTypeArguments()) != null && actualTypeArguments.length == 1 && actualTypeArguments[0] == cls) {
                    return cls;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x009e, code lost:
    
        if (r24.c != r7) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a0, code lost:
    
        r1 = new j$.util.concurrent.c[r8 << 1];
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a5, code lost:
    
        if (r2 >= r8) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00a7, code lost:
    
        r1[r2] = r7[r2];
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b0, code lost:
    
        r24.c = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x001b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0105 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void d(long j2, boolean z) {
        int iB;
        boolean z2;
        boolean z3;
        int length;
        boolean z4;
        int length2;
        int iB2 = ThreadLocalRandom.b();
        if (iB2 == 0) {
            ThreadLocalRandom.f();
            iB = ThreadLocalRandom.b();
            z2 = true;
        } else {
            iB = iB2;
            z2 = z;
        }
        int iA = iB;
        while (true) {
            boolean z5 = false;
            while (true) {
                c[] cVarArr = this.c;
                if (cVarArr != null && (length = cVarArr.length) > 0) {
                    c cVar = cVarArr[(length - 1) & iA];
                    if (cVar != null) {
                        if (z2) {
                            Unsafe unsafe = j;
                            long j3 = o;
                            long j4 = cVar.value;
                            if (unsafe.compareAndSwapLong(cVar, j3, j4, j4 + j2)) {
                                return;
                            }
                            if (this.c == cVarArr && length < i) {
                                if (!z5) {
                                    z5 = true;
                                } else if (this.cellsBusy == 0 && unsafe.compareAndSwapInt(this, n, 0, 1)) {
                                    try {
                                        break;
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                        } else {
                            z2 = true;
                        }
                        iA = ThreadLocalRandom.a(iA);
                    } else if (this.cellsBusy == 0) {
                        c cVar2 = new c(j2);
                        if (this.cellsBusy == 0 && j.compareAndSwapInt(this, n, 0, 1)) {
                            try {
                                c[] cVarArr2 = this.c;
                                if (cVarArr2 == null || (length2 = cVarArr2.length) <= 0) {
                                    z4 = false;
                                    if (!z4) {
                                        return;
                                    }
                                } else {
                                    int i2 = (length2 - 1) & iA;
                                    if (cVarArr2[i2] == null) {
                                        cVarArr2[i2] = cVar2;
                                        z4 = true;
                                    }
                                    if (!z4) {
                                    }
                                }
                            } finally {
                            }
                        }
                    }
                    z5 = false;
                    iA = ThreadLocalRandom.a(iA);
                } else if (this.cellsBusy == 0 && this.c == cVarArr && j.compareAndSwapInt(this, n, 0, 1)) {
                    try {
                        if (this.c == cVarArr) {
                            c[] cVarArr3 = new c[2];
                            cVarArr3[iA & 1] = new c(j2);
                            this.c = cVarArr3;
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            return;
                        }
                    } finally {
                    }
                } else {
                    Unsafe unsafe2 = j;
                    long j5 = m;
                    long j6 = this.baseCount;
                    if (unsafe2.compareAndSwapLong(this, j5, j6, j6 + j2)) {
                        return;
                    }
                }
            }
        }
    }

    private final k[] f() {
        while (true) {
            k[] kVarArr = this.a;
            if (kVarArr != null && kVarArr.length != 0) {
                return kVarArr;
            }
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                Thread.yield();
            } else if (j.compareAndSwapInt(this, k, i2, -1)) {
                try {
                    k[] kVarArr2 = this.a;
                    if (kVarArr2 == null || kVarArr2.length == 0) {
                        int i3 = i2 > 0 ? i2 : 16;
                        k[] kVarArr3 = new k[i3];
                        this.a = kVarArr3;
                        i2 = i3 - (i3 >>> 2);
                        kVarArr2 = kVarArr3;
                    }
                    this.sizeCtl = i2;
                    return kVarArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i2;
                    throw th;
                }
            }
        }
    }

    static final void i(k[] kVarArr, int i2, k kVar) {
        j.putObjectVolatile(kVarArr, (i2 << q) + p, kVar);
    }

    static final int j(int i2) {
        return (i2 ^ (i2 >>> 16)) & Integer.MAX_VALUE;
    }

    static final k l(k[] kVarArr, int i2) {
        return (k) j.getObjectVolatile(kVarArr, (i2 << q) + p);
    }

    private static final int m(int i2) {
        int i3 = i2 - 1;
        int i4 = i3 | (i3 >>> 1);
        int i5 = i4 | (i4 >>> 2);
        int i6 = i5 | (i5 >>> 4);
        int i7 = i6 | (i6 >>> 8);
        int i8 = i7 | (i7 >>> 16);
        if (i8 < 0) {
            return 1;
        }
        if (i8 >= 1073741824) {
            return 1073741824;
        }
        return 1 + i8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v10, types: [j$.util.concurrent.k] */
    /* JADX WARN: Type inference failed for: r12v12, types: [j$.util.concurrent.k] */
    /* JADX WARN: Type inference failed for: r4v0, types: [j$.util.concurrent.k] */
    /* JADX WARN: Type inference failed for: r5v17, types: [j$.util.concurrent.k] */
    /* JADX WARN: Type inference failed for: r5v22, types: [j$.util.concurrent.k] */
    private final void n(k[] kVarArr, k[] kVarArr2) {
        k[] kVarArr3;
        int i2;
        int i3;
        f fVar;
        ConcurrentHashMap<K, V> concurrentHashMap;
        int i4;
        q kVar;
        int i5;
        ConcurrentHashMap<K, V> concurrentHashMap2 = this;
        k[] kVarArr4 = kVarArr;
        int length = kVarArr4.length;
        int i6 = i;
        int i7 = i6 > 1 ? (length >>> 3) / i6 : length;
        int i8 = i7 < 16 ? 16 : i7;
        if (kVarArr2 == null) {
            try {
                k[] kVarArr5 = new k[length << 1];
                concurrentHashMap2.b = kVarArr5;
                concurrentHashMap2.transferIndex = length;
                kVarArr3 = kVarArr5;
            } catch (Throwable unused) {
                concurrentHashMap2.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            kVarArr3 = kVarArr2;
        }
        int length2 = kVarArr3.length;
        f fVar2 = new f(kVarArr3);
        int i9 = 0;
        int i10 = 0;
        boolean zB = true;
        boolean z = false;
        while (true) {
            if (zB) {
                int i11 = i10 - 1;
                if (i11 >= i9 || z) {
                    i9 = i9;
                    i10 = i11;
                    zB = false;
                } else {
                    int i12 = concurrentHashMap2.transferIndex;
                    if (i12 <= 0) {
                        i10 = -1;
                    } else {
                        Unsafe unsafe = j;
                        long j2 = l;
                        int i13 = i12 > i8 ? i12 - i8 : 0;
                        int i14 = i9;
                        if (unsafe.compareAndSwapInt(this, j2, i12, i13)) {
                            i10 = i12 - 1;
                            i9 = i13;
                        } else {
                            i9 = i14;
                            i10 = i11;
                        }
                    }
                    zB = false;
                }
            } else {
                int i15 = i9;
                q kVar2 = null;
                if (i10 < 0 || i10 >= length || (i4 = i10 + length) >= length2) {
                    i2 = i8;
                    i3 = length2;
                    fVar = fVar2;
                    concurrentHashMap = this;
                    if (z) {
                        concurrentHashMap.b = null;
                        concurrentHashMap.a = kVarArr3;
                        concurrentHashMap.sizeCtl = (length << 1) - (length >>> 1);
                        return;
                    }
                    Unsafe unsafe2 = j;
                    long j3 = k;
                    int i16 = concurrentHashMap.sizeCtl;
                    int i17 = i10;
                    if (!unsafe2.compareAndSwapInt(this, j3, i16, i16 - 1)) {
                        i10 = i17;
                    } else {
                        if (i16 - 2 != ((Integer.numberOfLeadingZeros(length) | LiteMode.FLAG_CHAT_SCALE) << h)) {
                            return;
                        }
                        i10 = length;
                        zB = true;
                        z = true;
                    }
                } else {
                    ?? L = l(kVarArr4, i10);
                    if (L == 0) {
                        zB = b(kVarArr4, i10, fVar2);
                        concurrentHashMap = concurrentHashMap2;
                        i2 = i8;
                        i3 = length2;
                        fVar = fVar2;
                    } else {
                        int i18 = L.a;
                        if (i18 == -1) {
                            concurrentHashMap = concurrentHashMap2;
                            i2 = i8;
                            i3 = length2;
                            fVar = fVar2;
                            zB = true;
                        } else {
                            synchronized (L) {
                                try {
                                    if (l(kVarArr4, i10) == L) {
                                        if (i18 >= 0) {
                                            int i19 = i18 & length;
                                            q qVar = L;
                                            for (q qVar2 = L.d; qVar2 != null; qVar2 = qVar2.d) {
                                                int i20 = qVar2.a & length;
                                                if (i20 != i19) {
                                                    qVar = qVar2;
                                                    i19 = i20;
                                                }
                                            }
                                            if (i19 == 0) {
                                                kVar = null;
                                                kVar2 = qVar;
                                            } else {
                                                kVar = qVar;
                                            }
                                            k kVar3 = L;
                                            while (kVar3 != qVar) {
                                                int i21 = kVar3.a;
                                                Object obj = kVar3.b;
                                                int i22 = i8;
                                                Object obj2 = kVar3.c;
                                                if ((i21 & length) == 0) {
                                                    i5 = length2;
                                                    kVar2 = new k(i21, obj, obj2, kVar2);
                                                } else {
                                                    i5 = length2;
                                                    kVar = new k(i21, obj, obj2, kVar);
                                                }
                                                kVar3 = kVar3.d;
                                                i8 = i22;
                                                length2 = i5;
                                            }
                                            i2 = i8;
                                            i3 = length2;
                                            i(kVarArr3, i10, kVar2);
                                            i(kVarArr3, i4, kVar);
                                            i(kVarArr4, i10, fVar2);
                                            fVar = fVar2;
                                        } else {
                                            i2 = i8;
                                            i3 = length2;
                                            if (L instanceof p) {
                                                p pVar = (p) L;
                                                q qVar3 = null;
                                                q qVar4 = null;
                                                k kVar4 = pVar.f;
                                                int i23 = 0;
                                                int i24 = 0;
                                                q qVar5 = null;
                                                while (kVar4 != null) {
                                                    p pVar2 = pVar;
                                                    int i25 = kVar4.a;
                                                    f fVar3 = fVar2;
                                                    q qVar6 = new q(i25, kVar4.b, kVar4.c, null, null);
                                                    if ((i25 & length) == 0) {
                                                        qVar6.h = qVar4;
                                                        if (qVar4 == null) {
                                                            kVar2 = qVar6;
                                                        } else {
                                                            qVar4.d = qVar6;
                                                        }
                                                        i23++;
                                                        qVar4 = qVar6;
                                                    } else {
                                                        qVar6.h = qVar3;
                                                        if (qVar3 == null) {
                                                            qVar5 = qVar6;
                                                        } else {
                                                            qVar3.d = qVar6;
                                                        }
                                                        i24++;
                                                        qVar3 = qVar6;
                                                    }
                                                    kVar4 = kVar4.d;
                                                    pVar = pVar2;
                                                    fVar2 = fVar3;
                                                }
                                                p pVar3 = pVar;
                                                f fVar4 = fVar2;
                                                k kVarQ = i23 <= 6 ? q(kVar2) : i24 != 0 ? new p(kVar2) : pVar3;
                                                k kVarQ2 = i24 <= 6 ? q(qVar5) : i23 != 0 ? new p(qVar5) : pVar3;
                                                i(kVarArr3, i10, kVarQ);
                                                i(kVarArr3, i4, kVarQ2);
                                                kVarArr4 = kVarArr;
                                                fVar = fVar4;
                                                i(kVarArr4, i10, fVar);
                                            }
                                        }
                                        zB = true;
                                    } else {
                                        i2 = i8;
                                        i3 = length2;
                                    }
                                    fVar = fVar2;
                                } finally {
                                }
                            }
                            concurrentHashMap = this;
                        }
                    }
                }
                fVar2 = fVar;
                concurrentHashMap2 = concurrentHashMap;
                i9 = i15;
                i8 = i2;
                length2 = i3;
            }
        }
    }

    private final void o(k[] kVarArr, int i2) {
        int length = kVarArr.length;
        if (length < 64) {
            p(length << 1);
            return;
        }
        k kVarL = l(kVarArr, i2);
        if (kVarL == null || kVarL.a < 0) {
            return;
        }
        synchronized (kVarL) {
            try {
                if (l(kVarArr, i2) == kVarL) {
                    q qVar = null;
                    k kVar = kVarL;
                    q qVar2 = null;
                    while (kVar != null) {
                        q qVar3 = new q(kVar.a, kVar.b, kVar.c, null, null);
                        qVar3.h = qVar2;
                        if (qVar2 == null) {
                            qVar = qVar3;
                        } else {
                            qVar2.d = qVar3;
                        }
                        kVar = kVar.d;
                        qVar2 = qVar3;
                    }
                    i(kVarArr, i2, new p(qVar));
                }
            } finally {
            }
        }
    }

    private final void p(int i2) {
        int length;
        k[] kVarArr;
        int iM = i2 >= 536870912 ? 1073741824 : m(i2 + (i2 >>> 1) + 1);
        while (true) {
            int i3 = this.sizeCtl;
            if (i3 < 0) {
                return;
            }
            k[] kVarArr2 = this.a;
            if (kVarArr2 == null || (length = kVarArr2.length) == 0) {
                int i4 = i3 > iM ? i3 : iM;
                if (j.compareAndSwapInt(this, k, i3, -1)) {
                    try {
                        if (this.a == kVarArr2) {
                            this.a = new k[i4];
                            i3 = i4 - (i4 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i3;
                    }
                } else {
                    continue;
                }
            } else {
                if (iM <= i3 || length >= 1073741824) {
                    return;
                }
                if (kVarArr2 == this.a) {
                    int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(length) | LiteMode.FLAG_CHAT_SCALE;
                    int i5 = h;
                    if (i3 < 0) {
                        if ((i3 >>> i5) != iNumberOfLeadingZeros || i3 == iNumberOfLeadingZeros + 1 || i3 == iNumberOfLeadingZeros + g || (kVarArr = this.b) == null || this.transferIndex <= 0) {
                            return;
                        }
                        if (j.compareAndSwapInt(this, k, i3, i3 + 1)) {
                            n(kVarArr2, kVarArr);
                        }
                    } else if (j.compareAndSwapInt(this, k, i3, (iNumberOfLeadingZeros << i5) + 2)) {
                        n(kVarArr2, null);
                    }
                } else {
                    continue;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2, types: [j$.util.concurrent.k] */
    static k q(q qVar) {
        k kVar = null;
        k kVar2 = null;
        for (q qVar2 = qVar; qVar2 != null; qVar2 = qVar2.d) {
            k kVar3 = new k(qVar2.a, qVar2.b, qVar2.c, null);
            if (kVar2 == null) {
                kVar = kVar3;
            } else {
                kVar2.d = kVar3;
            }
            kVar2 = kVar3;
        }
        return kVar;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        long j2;
        int iM;
        boolean z;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j3 = 0;
        long j4 = 0;
        k kVar = null;
        while (true) {
            Object object = objectInputStream.readObject();
            Object object2 = objectInputStream.readObject();
            j2 = 1;
            if (object == null || object2 == null) {
                break;
            }
            j4++;
            kVar = new k(j(object.hashCode()), object, object2, kVar);
        }
        if (j4 == 0) {
            this.sizeCtl = 0;
            return;
        }
        if (j4 >= 536870912) {
            iM = 1073741824;
        } else {
            int i2 = (int) j4;
            iM = m(i2 + (i2 >>> 1) + 1);
        }
        k[] kVarArr = new k[iM];
        int i3 = iM - 1;
        while (kVar != null) {
            k kVar2 = kVar.d;
            int i4 = kVar.a;
            int i5 = i4 & i3;
            k kVarL = l(kVarArr, i5);
            if (kVarL == null) {
                z = true;
            } else {
                Object obj2 = kVar.b;
                if (kVarL.a >= 0) {
                    int i6 = 0;
                    for (k kVar3 = kVarL; kVar3 != null; kVar3 = kVar3.d) {
                        if (kVar3.a == i4 && ((obj = kVar3.b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i6++;
                    }
                    z = true;
                    if (z && i6 >= 8) {
                        long j5 = j3 + 1;
                        kVar.d = kVarL;
                        k kVar4 = kVar;
                        q qVar = null;
                        q qVar2 = null;
                        while (kVar4 != null) {
                            long j6 = j5;
                            q qVar3 = new q(kVar4.a, kVar4.b, kVar4.c, null, null);
                            qVar3.h = qVar2;
                            if (qVar2 == null) {
                                qVar = qVar3;
                            } else {
                                qVar2.d = qVar3;
                            }
                            kVar4 = kVar4.d;
                            qVar2 = qVar3;
                            j5 = j6;
                        }
                        i(kVarArr, i5, new p(qVar));
                        j3 = j5;
                    }
                } else if (((p) kVarL).f(i4, obj2, kVar.c) == null) {
                    j3 += j2;
                }
                z = false;
            }
            if (z) {
                j3++;
                kVar.d = kVarL;
                i(kVarArr, i5, kVar);
            }
            j2 = 1;
            kVar = kVar2;
        }
        this.a = kVarArr;
        this.sizeCtl = iM - (iM >>> 2);
        this.baseCount = j3;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        int i2 = 1;
        int i3 = 0;
        while (i2 < 16) {
            i3++;
            i2 <<= 1;
        }
        int i4 = 32 - i3;
        int i5 = i2 - 1;
        m[] mVarArr = new m[16];
        for (int i6 = 0; i6 < 16; i6++) {
            mVarArr[i6] = new m();
        }
        objectOutputStream.putFields().put("segments", mVarArr);
        objectOutputStream.putFields().put("segmentShift", i4);
        objectOutputStream.putFields().put("segmentMask", i5);
        objectOutputStream.writeFields();
        k[] kVarArr = this.a;
        if (kVarArr != null) {
            o oVar = new o(kVarArr, kVarArr.length, 0, kVarArr.length);
            while (true) {
                k kVarB = oVar.b();
                if (kVarB == null) {
                    break;
                }
                objectOutputStream.writeObject(kVarB.b);
                objectOutputStream.writeObject(kVarB.c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        k kVarL;
        k[] kVarArrE = this.a;
        long j2 = 0;
        loop0: while (true) {
            int i2 = 0;
            while (kVarArrE != null && i2 < kVarArrE.length) {
                kVarL = l(kVarArrE, i2);
                if (kVarL == null) {
                    i2++;
                } else {
                    int i3 = kVarL.a;
                    if (i3 == -1) {
                        break;
                    }
                    synchronized (kVarL) {
                        try {
                            if (l(kVarArrE, i2) == kVarL) {
                                for (k kVar = i3 >= 0 ? kVarL : kVarL instanceof p ? ((p) kVarL).f : null; kVar != null; kVar = kVar.d) {
                                    j2--;
                                }
                                i(kVarArrE, i2, null);
                                i2++;
                            }
                        } finally {
                        }
                    }
                }
            }
            kVarArrE = e(kVarArrE, kVarL);
        }
        if (j2 != 0) {
            a(j2, -1);
        }
    }

    @Override // j$.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        k kVar;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int iJ = j(obj.hashCode());
        k[] kVarArrF = this.a;
        int i2 = 0;
        Object objApply = null;
        int i3 = 0;
        while (true) {
            if (kVarArrF != null) {
                int length = kVarArrF.length;
                if (length != 0) {
                    int i4 = (length - 1) & iJ;
                    k kVarL = l(kVarArrF, i4);
                    if (kVarL == null) {
                        l lVar = new l();
                        synchronized (lVar) {
                            try {
                                if (b(kVarArrF, i4, lVar)) {
                                    try {
                                        objApply = biFunction.apply(obj, null);
                                        if (objApply != null) {
                                            kVar = new k(iJ, obj, objApply, null);
                                            i3 = 1;
                                        } else {
                                            kVar = null;
                                        }
                                        i(kVarArrF, i4, kVar);
                                        i2 = 1;
                                    } catch (Throwable th) {
                                        i(kVarArrF, i4, null);
                                        throw th;
                                    }
                                }
                            } finally {
                            }
                        }
                        if (i2 != 0) {
                        }
                    } else {
                        int i5 = kVarL.a;
                        if (i5 == -1) {
                            kVarArrF = e(kVarArrF, kVarL);
                        } else {
                            synchronized (kVarL) {
                                try {
                                    if (l(kVarArrF, i4) == kVarL) {
                                        if (i5 >= 0) {
                                            k kVar2 = null;
                                            k kVar3 = kVarL;
                                            i2 = 1;
                                            while (true) {
                                                if (kVar3.a != iJ || ((obj2 = kVar3.b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                                    k kVar4 = kVar3.d;
                                                    if (kVar4 == null) {
                                                        Object objApply2 = biFunction.apply(obj, null);
                                                        if (objApply2 != null) {
                                                            kVar3.d = new k(iJ, obj, objApply2, null);
                                                            objApply = objApply2;
                                                        } else {
                                                            objApply = objApply2;
                                                        }
                                                    } else {
                                                        i2++;
                                                        kVar2 = kVar3;
                                                        kVar3 = kVar4;
                                                    }
                                                }
                                            }
                                            Object objApply3 = biFunction.apply(obj, kVar3.c);
                                            if (objApply3 != null) {
                                                kVar3.c = objApply3;
                                                objApply = objApply3;
                                            } else {
                                                k kVar5 = kVar3.d;
                                                if (kVar2 != null) {
                                                    kVar2.d = kVar5;
                                                } else {
                                                    i(kVarArrF, i4, kVar5);
                                                }
                                                objApply = objApply3;
                                                i3 = -1;
                                            }
                                        } else if (kVarL instanceof p) {
                                            p pVar = (p) kVarL;
                                            q qVar = pVar.e;
                                            q qVarB = qVar != null ? qVar.b(iJ, obj, null) : null;
                                            Object objApply4 = biFunction.apply(obj, qVarB == null ? null : qVarB.c);
                                            if (objApply4 != null) {
                                                if (qVarB != null) {
                                                    qVarB.c = objApply4;
                                                } else {
                                                    pVar.f(iJ, obj, objApply4);
                                                    objApply = objApply4;
                                                    i2 = 1;
                                                    i3 = 1;
                                                }
                                            } else if (qVarB != null) {
                                                if (pVar.g(qVarB)) {
                                                    i(kVarArrF, i4, q(pVar.f));
                                                }
                                                objApply = objApply4;
                                                i2 = 1;
                                                i3 = -1;
                                            }
                                            objApply = objApply4;
                                            i2 = 1;
                                        }
                                    }
                                } finally {
                                }
                            }
                            if (i2 != 0) {
                                if (i2 >= 8) {
                                    o(kVarArrF, i4);
                                }
                            }
                        }
                    }
                }
            }
            kVarArrF = f();
        }
        if (i3 != 0) {
            a(i3, i2);
        }
        return objApply;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final /* synthetic */ Object compute(Object obj, java.util.function.BiFunction biFunction) {
        return compute(obj, BiFunction.VivifiedWrapper.convert(biFunction));
    }

    @Override // j$.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        q qVarB;
        Object obj2;
        if (obj == null || function == null) {
            throw null;
        }
        int iJ = j(obj.hashCode());
        k[] kVarArrF = this.a;
        Object objApply = null;
        int i2 = 0;
        while (true) {
            if (kVarArrF != null) {
                int length = kVarArrF.length;
                if (length != 0) {
                    int i3 = (length - 1) & iJ;
                    k kVarL = l(kVarArrF, i3);
                    boolean z = true;
                    if (kVarL == null) {
                        l lVar = new l();
                        synchronized (lVar) {
                            try {
                                if (b(kVarArrF, i3, lVar)) {
                                    try {
                                        objApply = function.apply(obj);
                                        i(kVarArrF, i3, objApply != null ? new k(iJ, obj, objApply, null) : null);
                                        i2 = 1;
                                    } catch (Throwable th) {
                                        i(kVarArrF, i3, null);
                                        throw th;
                                    }
                                }
                            } finally {
                            }
                        }
                        if (i2 != 0) {
                        }
                    } else {
                        int i4 = kVarL.a;
                        if (i4 == -1) {
                            kVarArrF = e(kVarArrF, kVarL);
                        } else {
                            synchronized (kVarL) {
                                try {
                                    if (l(kVarArrF, i3) == kVarL) {
                                        if (i4 >= 0) {
                                            k kVar = kVarL;
                                            i2 = 1;
                                            while (true) {
                                                if (kVar.a != iJ || ((obj2 = kVar.b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                                    k kVar2 = kVar.d;
                                                    if (kVar2 == null) {
                                                        Object objApply2 = function.apply(obj);
                                                        if (objApply2 != null) {
                                                            kVar.d = new k(iJ, obj, objApply2, null);
                                                            objApply = objApply2;
                                                        } else {
                                                            objApply = objApply2;
                                                        }
                                                    } else {
                                                        i2++;
                                                        kVar = kVar2;
                                                    }
                                                }
                                            }
                                            objApply = kVar.c;
                                        } else if (kVarL instanceof p) {
                                            p pVar = (p) kVarL;
                                            q qVar = pVar.e;
                                            if (qVar == null || (qVarB = qVar.b(iJ, obj, null)) == null) {
                                                objApply = function.apply(obj);
                                                if (objApply != null) {
                                                    pVar.f(iJ, obj, objApply);
                                                    i2 = 2;
                                                }
                                            } else {
                                                objApply = qVarB.c;
                                            }
                                            i2 = 2;
                                        }
                                    }
                                    z = false;
                                } finally {
                                }
                            }
                            if (i2 != 0) {
                                if (i2 >= 8) {
                                    o(kVarArrF, i3);
                                }
                                if (!z) {
                                    return objApply;
                                }
                            }
                        }
                    }
                }
            }
            kVarArrF = f();
        }
        if (objApply != null) {
            a(1L, i2);
        }
        return objApply;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final /* synthetic */ Object computeIfAbsent(Object obj, java.util.function.Function function) {
        return computeIfAbsent(obj, Function.VivifiedWrapper.convert(function));
    }

    @Override // j$.util.Map
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        q qVarB;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int iJ = j(obj.hashCode());
        k[] kVarArrF = this.a;
        int i2 = 0;
        Object objApply = null;
        int i3 = 0;
        while (true) {
            if (kVarArrF != null) {
                int length = kVarArrF.length;
                if (length != 0) {
                    int i4 = (length - 1) & iJ;
                    k kVarL = l(kVarArrF, i4);
                    if (kVarL == null) {
                        break;
                    }
                    int i5 = kVarL.a;
                    if (i5 == -1) {
                        kVarArrF = e(kVarArrF, kVarL);
                    } else {
                        synchronized (kVarL) {
                            try {
                                if (l(kVarArrF, i4) == kVarL) {
                                    if (i5 >= 0) {
                                        i3 = 1;
                                        k kVar = null;
                                        k kVar2 = kVarL;
                                        while (true) {
                                            if (kVar2.a != iJ || ((obj2 = kVar2.b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                                k kVar3 = kVar2.d;
                                                if (kVar3 == null) {
                                                    break;
                                                }
                                                i3++;
                                                kVar = kVar2;
                                                kVar2 = kVar3;
                                            }
                                        }
                                        objApply = biFunction.apply(obj, kVar2.c);
                                        if (objApply != null) {
                                            kVar2.c = objApply;
                                        } else {
                                            k kVar4 = kVar2.d;
                                            if (kVar != null) {
                                                kVar.d = kVar4;
                                            } else {
                                                i(kVarArrF, i4, kVar4);
                                            }
                                            i2 = -1;
                                        }
                                    } else if (kVarL instanceof p) {
                                        p pVar = (p) kVarL;
                                        q qVar = pVar.e;
                                        if (qVar != null && (qVarB = qVar.b(iJ, obj, null)) != null) {
                                            objApply = biFunction.apply(obj, qVarB.c);
                                            if (objApply != null) {
                                                qVarB.c = objApply;
                                            } else {
                                                if (pVar.g(qVarB)) {
                                                    i(kVarArrF, i4, q(pVar.f));
                                                }
                                                i2 = -1;
                                            }
                                        }
                                        i3 = 2;
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (i3 != 0) {
                            break;
                        }
                    }
                }
            }
            kVarArrF = f();
        }
        if (i2 != 0) {
            a(i2, i3);
        }
        return objApply;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final /* synthetic */ Object computeIfPresent(Object obj, java.util.function.BiFunction biFunction) {
        return computeIfPresent(obj, BiFunction.VivifiedWrapper.convert(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        obj.getClass();
        k[] kVarArr = this.a;
        if (kVarArr != null) {
            o oVar = new o(kVarArr, kVarArr.length, 0, kVarArr.length);
            while (true) {
                k kVarB = oVar.b();
                if (kVarB == null) {
                    break;
                }
                Object obj2 = kVarB.c;
                if (obj2 == obj) {
                    return true;
                }
                if (obj2 != null && obj.equals(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    final k[] e(k[] kVarArr, k kVar) {
        k[] kVarArr2;
        int i2;
        if (!(kVar instanceof f) || (kVarArr2 = ((f) kVar).e) == null) {
            return this.a;
        }
        int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(kVarArr.length) | LiteMode.FLAG_CHAT_SCALE;
        while (true) {
            if (kVarArr2 != this.b || this.a != kVarArr || (i2 = this.sizeCtl) >= 0 || (i2 >>> h) != iNumberOfLeadingZeros || i2 == iNumberOfLeadingZeros + 1 || i2 == g + iNumberOfLeadingZeros || this.transferIndex <= 0) {
                break;
            }
            if (j.compareAndSwapInt(this, k, i2, i2 + 1)) {
                n(kVarArr, kVarArr2);
                break;
            }
        }
        return kVarArr2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        h hVar = this.f;
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = new h(this, 1);
        this.f = hVar2;
        return hVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        V value;
        V v;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        k[] kVarArr = this.a;
        int length = kVarArr == null ? 0 : kVarArr.length;
        o oVar = new o(kVarArr, length, 0, length);
        while (true) {
            k kVarB = oVar.b();
            if (kVarB == null) {
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    K key = entry.getKey();
                    if (key == null || (value = entry.getValue()) == null || (v = get(key)) == null || (value != v && !value.equals(v))) {
                        return false;
                    }
                }
                return true;
            }
            Object obj2 = kVarB.c;
            Object obj3 = map.get(kVarB.b);
            if (obj3 == null || (obj3 != obj2 && !obj3.equals(obj2))) {
                break;
            }
        }
        return false;
    }

    @Override // j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        k[] kVarArr = this.a;
        if (kVarArr == null) {
            return;
        }
        o oVar = new o(kVarArr, kVarArr.length, 0, kVarArr.length);
        while (true) {
            k kVarB = oVar.b();
            if (kVarB == null) {
                return;
            } else {
                biConsumer.accept(kVarB.b, kVarB.c);
            }
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final /* synthetic */ void forEach(java.util.function.BiConsumer biConsumer) {
        forEach(BiConsumer.VivifiedWrapper.convert(biConsumer));
    }

    final Object g(Object obj, Object obj2, boolean z) {
        Object obj3;
        Object obj4;
        if (obj == null || obj2 == null) {
            throw null;
        }
        int iJ = j(obj.hashCode());
        k[] kVarArrF = this.a;
        int i2 = 0;
        while (true) {
            if (kVarArrF != null) {
                int length = kVarArrF.length;
                if (length != 0) {
                    int i3 = (length - 1) & iJ;
                    k kVarL = l(kVarArrF, i3);
                    if (kVarL != null) {
                        int i4 = kVarL.a;
                        if (i4 == -1) {
                            kVarArrF = e(kVarArrF, kVarL);
                        } else {
                            synchronized (kVarL) {
                                try {
                                    if (l(kVarArrF, i3) == kVarL) {
                                        if (i4 >= 0) {
                                            i2 = 1;
                                            k kVar = kVarL;
                                            while (true) {
                                                if (kVar.a == iJ && ((obj4 = kVar.b) == obj || (obj4 != null && obj.equals(obj4)))) {
                                                    break;
                                                }
                                                k kVar2 = kVar.d;
                                                if (kVar2 == null) {
                                                    kVar.d = new k(iJ, obj, obj2, null);
                                                    break;
                                                }
                                                i2++;
                                                kVar = kVar2;
                                            }
                                            obj3 = kVar.c;
                                            if (!z) {
                                                kVar.c = obj2;
                                            }
                                        } else if (kVarL instanceof p) {
                                            q qVarF = ((p) kVarL).f(iJ, obj, obj2);
                                            if (qVarF != null) {
                                                obj3 = qVarF.c;
                                                if (!z) {
                                                    qVarF.c = obj2;
                                                }
                                            } else {
                                                obj3 = null;
                                            }
                                            i2 = 2;
                                        }
                                    }
                                    obj3 = null;
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            if (i2 != 0) {
                                if (i2 >= 8) {
                                    o(kVarArrF, i3);
                                }
                                if (obj3 != null) {
                                    return obj3;
                                }
                            }
                        }
                    } else if (b(kVarArrF, i3, new k(iJ, obj, obj2, null))) {
                        break;
                    }
                }
            }
            kVarArrF = f();
        }
        a(1L, i2);
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        int length;
        k kVarL;
        Object obj2;
        int iJ = j(obj.hashCode());
        k[] kVarArr = this.a;
        if (kVarArr != null && (length = kVarArr.length) > 0 && (kVarL = l(kVarArr, (length - 1) & iJ)) != null) {
            int i2 = kVarL.a;
            if (i2 == iJ) {
                Object obj3 = kVarL.b;
                if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                    return (V) kVarL.c;
                }
            } else if (i2 < 0) {
                k kVarA = kVarL.a(obj, iJ);
                if (kVarA != null) {
                    return (V) kVarA.c;
                }
                return null;
            }
            while (true) {
                kVarL = kVarL.d;
                if (kVarL == null) {
                    break;
                }
                if (kVarL.a == iJ && ((obj2 = kVarL.b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    break;
                }
            }
            return (V) kVarL.c;
        }
        return null;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        V v = get(obj);
        return v == null ? obj2 : v;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0045, code lost:
    
        r9 = r5.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0047, code lost:
    
        if (r15 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0049, code lost:
    
        if (r15 == r9) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004b, code lost:
    
        if (r9 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0051, code lost:
    
        if (r15.equals(r9) == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0053, code lost:
    
        if (r14 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0055, code lost:
    
        r5.c = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0058, code lost:
    
        if (r8 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005a, code lost:
    
        r8.d = r5.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x005f, code lost:
    
        r5 = r5.d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final Object h(Object obj, Object obj2, Object obj3) {
        int length;
        int i2;
        k kVarL;
        boolean z;
        Object obj4;
        q qVarB;
        Object obj5;
        int iJ = j(obj.hashCode());
        k[] kVarArrE = this.a;
        while (true) {
            if (kVarArrE == null || (length = kVarArrE.length) == 0 || (kVarL = l(kVarArrE, (i2 = (length - 1) & iJ))) == null) {
                break;
            }
            int i3 = kVarL.a;
            if (i3 == -1) {
                kVarArrE = e(kVarArrE, kVarL);
            } else {
                synchronized (kVarL) {
                    try {
                        if (l(kVarArrE, i2) == kVarL) {
                            z = true;
                            if (i3 >= 0) {
                                k kVar = null;
                                k kVar2 = kVarL;
                                while (true) {
                                    if (kVar2.a != iJ || ((obj5 = kVar2.b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                        k kVar3 = kVar2.d;
                                        if (kVar3 == null) {
                                            break;
                                        }
                                        kVar = kVar2;
                                        kVar2 = kVar3;
                                    }
                                }
                                obj4 = null;
                            } else {
                                if (kVarL instanceof p) {
                                    p pVar = (p) kVarL;
                                    q qVar = pVar.e;
                                    if (qVar != null && (qVarB = qVar.b(iJ, obj, null)) != null) {
                                        obj4 = qVarB.c;
                                        if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                            if (obj2 != null) {
                                                qVarB.c = obj2;
                                            } else if (pVar.g(qVarB)) {
                                                k kVarQ = q(pVar.f);
                                                i(kVarArrE, i2, kVarQ);
                                            }
                                        }
                                    }
                                }
                                obj4 = null;
                            }
                        }
                        z = false;
                        obj4 = null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z) {
                    if (obj4 != null) {
                        if (obj2 == null) {
                            a(-1L, -1);
                        }
                        return obj4;
                    }
                }
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        k[] kVarArr = this.a;
        int iHashCode = 0;
        if (kVarArr != null) {
            o oVar = new o(kVarArr, kVarArr.length, 0, kVarArr.length);
            while (true) {
                k kVarB = oVar.b();
                if (kVarB == null) {
                    break;
                }
                iHashCode += kVarB.c.hashCode() ^ kVarB.b.hashCode();
            }
        }
        return iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return k() <= 0;
    }

    final long k() {
        c[] cVarArr = this.c;
        long j2 = this.baseCount;
        if (cVarArr != null) {
            for (c cVar : cVarArr) {
                if (cVar != null) {
                    j2 += cVar.value;
                }
            }
        }
        return j2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        h hVar = this.d;
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = new h(this, 0);
        this.d = hVar2;
        return hVar2;
    }

    @Override // j$.util.Map
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        int i2;
        Object obj3;
        Object obj4 = obj2;
        if (obj == null || obj4 == null || biFunction == null) {
            throw null;
        }
        int iJ = j(obj.hashCode());
        k[] kVarArrF = this.a;
        int i3 = 0;
        Object obj5 = null;
        int i4 = 0;
        while (true) {
            if (kVarArrF != null) {
                int length = kVarArrF.length;
                if (length != 0) {
                    int i5 = (length - 1) & iJ;
                    k kVarL = l(kVarArrF, i5);
                    i2 = 1;
                    if (kVarL != null) {
                        int i6 = kVarL.a;
                        if (i6 == -1) {
                            kVarArrF = e(kVarArrF, kVarL);
                        } else {
                            synchronized (kVarL) {
                                try {
                                    if (l(kVarArrF, i5) == kVarL) {
                                        if (i6 >= 0) {
                                            k kVar = null;
                                            k kVar2 = kVarL;
                                            i3 = 1;
                                            while (true) {
                                                if (kVar2.a == iJ && ((obj3 = kVar2.b) == obj || (obj3 != null && obj.equals(obj3)))) {
                                                    break;
                                                }
                                                k kVar3 = kVar2.d;
                                                if (kVar3 == null) {
                                                    kVar2.d = new k(iJ, obj, obj4, null);
                                                    obj5 = obj4;
                                                    break;
                                                }
                                                i3++;
                                                kVar = kVar2;
                                                kVar2 = kVar3;
                                            }
                                            Object objApply = biFunction.apply(kVar2.c, obj4);
                                            if (objApply != null) {
                                                kVar2.c = objApply;
                                                obj5 = objApply;
                                            } else {
                                                k kVar4 = kVar2.d;
                                                if (kVar != null) {
                                                    kVar.d = kVar4;
                                                } else {
                                                    i(kVarArrF, i5, kVar4);
                                                }
                                                obj5 = objApply;
                                                i4 = -1;
                                            }
                                        } else if (kVarL instanceof p) {
                                            p pVar = (p) kVarL;
                                            q qVar = pVar.e;
                                            q qVarB = qVar == null ? null : qVar.b(iJ, obj, null);
                                            Object objApply2 = qVarB == null ? obj4 : biFunction.apply(qVarB.c, obj4);
                                            if (objApply2 != null) {
                                                if (qVarB != null) {
                                                    qVarB.c = objApply2;
                                                } else {
                                                    pVar.f(iJ, obj, objApply2);
                                                    obj5 = objApply2;
                                                    i3 = 2;
                                                    i4 = 1;
                                                }
                                            } else if (qVarB != null) {
                                                if (pVar.g(qVarB)) {
                                                    i(kVarArrF, i5, q(pVar.f));
                                                }
                                                obj5 = objApply2;
                                                i3 = 2;
                                                i4 = -1;
                                            }
                                            obj5 = objApply2;
                                            i3 = 2;
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            if (i3 != 0) {
                                if (i3 >= 8) {
                                    o(kVarArrF, i5);
                                }
                                i2 = i4;
                                obj4 = obj5;
                            }
                        }
                    } else if (b(kVarArrF, i5, new k(iJ, obj, obj4, null))) {
                        break;
                    }
                }
            }
            kVarArrF = f();
        }
        if (i2 != 0) {
            a(i2, i3);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final /* synthetic */ Object merge(Object obj, Object obj2, java.util.function.BiFunction biFunction) {
        return merge(obj, obj2, BiFunction.VivifiedWrapper.convert(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k2, V v) {
        return (V) g(k2, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        p(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            g(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public V putIfAbsent(K k2, V v) {
        return (V) g(k2, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        return (V) h(obj, null, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        obj.getClass();
        return (obj2 == null || h(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw null;
        }
        return h(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return h(obj, obj3, obj2) != null;
    }

    @Override // j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        biFunction.getClass();
        k[] kVarArr = this.a;
        if (kVarArr == null) {
            return;
        }
        o oVar = new o(kVarArr, kVarArr.length, 0, kVarArr.length);
        while (true) {
            k kVarB = oVar.b();
            if (kVarB == null) {
                return;
            }
            Object obj = kVarB.c;
            Object obj2 = kVarB.b;
            do {
                Object objApply = biFunction.apply(obj2, obj);
                objApply.getClass();
                if (h(obj2, objApply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final /* synthetic */ void replaceAll(java.util.function.BiFunction biFunction) {
        replaceAll(BiFunction.VivifiedWrapper.convert(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long jK = k();
        if (jK < 0) {
            return 0;
        }
        if (jK > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) jK;
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        k[] kVarArr = this.a;
        int length = kVarArr == null ? 0 : kVarArr.length;
        o oVar = new o(kVarArr, length, 0, length);
        StringBuilder sb = new StringBuilder("{");
        k kVarB = oVar.b();
        if (kVarB != null) {
            while (true) {
                Object obj = kVarB.b;
                Object obj2 = kVarB.c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                kVarB = oVar.b();
                if (kVarB == null) {
                    break;
                }
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        r rVar = this.e;
        if (rVar != null) {
            return rVar;
        }
        r rVar2 = new r(this);
        this.e = rVar2;
        return rVar2;
    }
}
