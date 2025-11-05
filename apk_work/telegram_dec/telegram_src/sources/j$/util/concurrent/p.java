package j$.util.concurrent;

import java.util.concurrent.locks.LockSupport;
import sun.misc.Unsafe;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class p extends k {
    private static final Unsafe h;
    private static final long i;
    q e;
    volatile q f;
    volatile Thread g;
    volatile int lockState;

    static {
        try {
            Unsafe unsafeC = u.c();
            h = unsafeC;
            i = unsafeC.objectFieldOffset(p.class.getDeclaredField("lockState"));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004b A[PHI: r7
      0x004b: PHI (r7v3 java.lang.Class<?>) = (r7v2 java.lang.Class<?>), (r7v4 java.lang.Class<?>) binds: [B:24:0x0049, B:16:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    p(q qVar) {
        int iJ;
        super(-2, null, null, null);
        this.f = qVar;
        q qVar2 = null;
        while (qVar != null) {
            q qVar3 = (q) qVar.d;
            qVar.g = null;
            qVar.f = null;
            if (qVar2 == null) {
                qVar.e = null;
                qVar.i = false;
            } else {
                Object obj = qVar.b;
                int i2 = qVar.a;
                q qVar4 = qVar2;
                Class<?> clsC = null;
                while (true) {
                    Object obj2 = qVar4.b;
                    int i3 = qVar4.a;
                    if (i3 > i2) {
                        iJ = -1;
                    } else if (i3 < i2) {
                        iJ = 1;
                    } else if (clsC != null || (clsC = ConcurrentHashMap.c(obj)) != null) {
                        int i4 = ConcurrentHashMap.i;
                        int iCompareTo = (obj2 == null || obj2.getClass() != clsC) ? 0 : ((Comparable) obj).compareTo(obj2);
                        iJ = iCompareTo == 0 ? j(obj, obj2) : iCompareTo;
                    }
                    q qVar5 = iJ <= 0 ? qVar4.f : qVar4.g;
                    if (qVar5 == null) {
                        break;
                    } else {
                        qVar4 = qVar5;
                    }
                }
                qVar.e = qVar4;
                if (iJ <= 0) {
                    qVar4.f = qVar;
                } else {
                    qVar4.g = qVar;
                }
                qVar = c(qVar2, qVar);
            }
            qVar2 = qVar;
            qVar = qVar3;
        }
        this.e = qVar2;
    }

    static q b(q qVar, q qVar2) {
        while (qVar2 != null && qVar2 != qVar) {
            q qVar3 = qVar2.e;
            if (qVar3 == null) {
                qVar2.i = false;
                return qVar2;
            }
            if (qVar2.i) {
                qVar2.i = false;
                return qVar;
            }
            q qVar4 = qVar3.f;
            if (qVar4 == qVar2) {
                qVar4 = qVar3.g;
                if (qVar4 != null && qVar4.i) {
                    qVar4.i = false;
                    qVar3.i = true;
                    qVar = h(qVar, qVar3);
                    qVar3 = qVar2.e;
                    qVar4 = qVar3 == null ? null : qVar3.g;
                }
                if (qVar4 == null) {
                    qVar2 = qVar3;
                } else {
                    q qVar5 = qVar4.f;
                    q qVar6 = qVar4.g;
                    if ((qVar6 == null || !qVar6.i) && (qVar5 == null || !qVar5.i)) {
                        qVar4.i = true;
                        qVar2 = qVar3;
                    } else {
                        if (qVar6 == null || !qVar6.i) {
                            if (qVar5 != null) {
                                qVar5.i = false;
                            }
                            qVar4.i = true;
                            qVar = i(qVar, qVar4);
                            qVar3 = qVar2.e;
                            qVar4 = qVar3 != null ? qVar3.g : null;
                        }
                        if (qVar4 != null) {
                            qVar4.i = qVar3 == null ? false : qVar3.i;
                            q qVar7 = qVar4.g;
                            if (qVar7 != null) {
                                qVar7.i = false;
                            }
                        }
                        if (qVar3 != null) {
                            qVar3.i = false;
                            qVar = h(qVar, qVar3);
                        }
                        qVar2 = qVar;
                    }
                }
            } else {
                if (qVar4 != null && qVar4.i) {
                    qVar4.i = false;
                    qVar3.i = true;
                    qVar = i(qVar, qVar3);
                    qVar3 = qVar2.e;
                    qVar4 = qVar3 == null ? null : qVar3.f;
                }
                if (qVar4 == null) {
                    qVar2 = qVar3;
                } else {
                    q qVar8 = qVar4.f;
                    q qVar9 = qVar4.g;
                    if ((qVar8 == null || !qVar8.i) && (qVar9 == null || !qVar9.i)) {
                        qVar4.i = true;
                        qVar2 = qVar3;
                    } else {
                        if (qVar8 == null || !qVar8.i) {
                            if (qVar9 != null) {
                                qVar9.i = false;
                            }
                            qVar4.i = true;
                            qVar = h(qVar, qVar4);
                            qVar3 = qVar2.e;
                            qVar4 = qVar3 != null ? qVar3.f : null;
                        }
                        if (qVar4 != null) {
                            qVar4.i = qVar3 == null ? false : qVar3.i;
                            q qVar10 = qVar4.f;
                            if (qVar10 != null) {
                                qVar10.i = false;
                            }
                        }
                        if (qVar3 != null) {
                            qVar3.i = false;
                            qVar = i(qVar, qVar3);
                        }
                        qVar2 = qVar;
                    }
                }
            }
        }
        return qVar;
    }

    static q c(q qVar, q qVar2) {
        q qVar3;
        qVar2.i = true;
        while (true) {
            q qVar4 = qVar2.e;
            if (qVar4 == null) {
                qVar2.i = false;
                return qVar2;
            }
            if (!qVar4.i || (qVar3 = qVar4.e) == null) {
                break;
            }
            q qVar5 = qVar3.f;
            if (qVar4 == qVar5) {
                qVar5 = qVar3.g;
                if (qVar5 == null || !qVar5.i) {
                    if (qVar2 == qVar4.g) {
                        qVar = h(qVar, qVar4);
                        q qVar6 = qVar4.e;
                        qVar3 = qVar6 == null ? null : qVar6.e;
                        qVar4 = qVar6;
                        qVar2 = qVar4;
                    }
                    if (qVar4 != null) {
                        qVar4.i = false;
                        if (qVar3 != null) {
                            qVar3.i = true;
                            qVar = i(qVar, qVar3);
                        }
                    }
                } else {
                    qVar5.i = false;
                    qVar4.i = false;
                    qVar3.i = true;
                    qVar2 = qVar3;
                }
            } else if (qVar5 == null || !qVar5.i) {
                if (qVar2 == qVar4.f) {
                    qVar = i(qVar, qVar4);
                    q qVar7 = qVar4.e;
                    qVar3 = qVar7 == null ? null : qVar7.e;
                    qVar4 = qVar7;
                    qVar2 = qVar4;
                }
                if (qVar4 != null) {
                    qVar4.i = false;
                    if (qVar3 != null) {
                        qVar3.i = true;
                        qVar = h(qVar, qVar3);
                    }
                }
            } else {
                qVar5.i = false;
                qVar4.i = false;
                qVar3.i = true;
                qVar2 = qVar3;
            }
        }
        return qVar;
    }

    private final void d() {
        boolean z = false;
        while (true) {
            int i2 = this.lockState;
            if ((i2 & (-3)) == 0) {
                if (h.compareAndSwapInt(this, i, i2, 1)) {
                    break;
                }
            } else if ((i2 & 2) == 0) {
                if (h.compareAndSwapInt(this, i, i2, i2 | 2)) {
                    this.g = Thread.currentThread();
                    z = true;
                }
            } else if (z) {
                LockSupport.park(this);
            }
        }
        if (z) {
            this.g = null;
        }
    }

    private final void e() {
        if (h.compareAndSwapInt(this, i, 0, 1)) {
            return;
        }
        d();
    }

    static q h(q qVar, q qVar2) {
        q qVar3 = qVar2.g;
        if (qVar3 != null) {
            q qVar4 = qVar3.f;
            qVar2.g = qVar4;
            if (qVar4 != null) {
                qVar4.e = qVar2;
            }
            q qVar5 = qVar2.e;
            qVar3.e = qVar5;
            if (qVar5 == null) {
                qVar3.i = false;
                qVar = qVar3;
            } else if (qVar5.f == qVar2) {
                qVar5.f = qVar3;
            } else {
                qVar5.g = qVar3;
            }
            qVar3.f = qVar2;
            qVar2.e = qVar3;
        }
        return qVar;
    }

    static q i(q qVar, q qVar2) {
        q qVar3 = qVar2.f;
        if (qVar3 != null) {
            q qVar4 = qVar3.g;
            qVar2.f = qVar4;
            if (qVar4 != null) {
                qVar4.e = qVar2;
            }
            q qVar5 = qVar2.e;
            qVar3.e = qVar5;
            if (qVar5 == null) {
                qVar3.i = false;
                qVar = qVar3;
            } else if (qVar5.g == qVar2) {
                qVar5.g = qVar3;
            } else {
                qVar5.f = qVar3;
            }
            qVar3.g = qVar2;
            qVar2.e = qVar3;
        }
        return qVar;
    }

    static int j(Object obj, Object obj2) {
        int iCompareTo;
        return (obj == null || obj2 == null || (iCompareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : iCompareTo;
    }

    @Override // j$.util.concurrent.k
    final k a(Object obj, int i2) {
        Object obj2;
        Thread thread;
        Thread thread2;
        q qVarB = null;
        if (obj != null) {
            k kVar = this.f;
            while (kVar != null) {
                int i3 = this.lockState;
                if ((i3 & 3) == 0) {
                    Unsafe unsafe = h;
                    long j = i;
                    if (unsafe.compareAndSwapInt(this, j, i3, i3 + 4)) {
                        try {
                            q qVar = this.e;
                            if (qVar != null) {
                                qVarB = qVar.b(i2, obj, null);
                            }
                            if (u.a(unsafe, this, j) == 6 && (thread2 = this.g) != null) {
                                LockSupport.unpark(thread2);
                            }
                            return qVarB;
                        } catch (Throwable th) {
                            if (u.a(h, this, i) == 6 && (thread = this.g) != null) {
                                LockSupport.unpark(thread);
                            }
                            throw th;
                        }
                    }
                } else {
                    if (kVar.a == i2 && ((obj2 = kVar.b) == obj || (obj2 != null && obj.equals(obj2)))) {
                        return kVar;
                    }
                    kVar = kVar.d;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0070, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b3, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00bb, code lost:
    
        return r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005a A[PHI: r2
      0x005a: PHI (r2v5 java.lang.Class<?>) = (r2v4 java.lang.Class<?>), (r2v6 java.lang.Class<?>) binds: [B:26:0x0058, B:18:0x0042] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final q f(int i2, Object obj, Object obj2) {
        int iJ;
        q qVar;
        q qVar2 = this.e;
        Class<?> clsC = null;
        boolean z = false;
        while (true) {
            if (qVar2 == null) {
                q qVar3 = new q(i2, obj, obj2, null, null);
                this.e = qVar3;
                this.f = qVar3;
                break;
            }
            int i3 = qVar2.a;
            if (i3 > i2) {
                iJ = -1;
            } else if (i3 < i2) {
                iJ = 1;
            } else {
                Object obj3 = qVar2.b;
                if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                    break;
                }
                if (clsC != null || (clsC = ConcurrentHashMap.c(obj)) != null) {
                    int i4 = ConcurrentHashMap.i;
                    int iCompareTo = (obj3 == null || obj3.getClass() != clsC) ? 0 : ((Comparable) obj).compareTo(obj3);
                    if (iCompareTo == 0) {
                        if (!z) {
                            q qVar4 = qVar2.f;
                            if ((qVar4 != null && (r3 = qVar4.b(i2, obj, clsC)) != null) || ((qVar = qVar2.g) != null && (r3 = qVar.b(i2, obj, clsC)) != null)) {
                                break;
                            }
                            z = true;
                        }
                        iJ = j(obj, obj3);
                    } else {
                        iJ = iCompareTo;
                    }
                }
            }
            q qVar5 = iJ <= 0 ? qVar2.f : qVar2.g;
            if (qVar5 == null) {
                q qVar6 = this.f;
                q qVar7 = new q(i2, obj, obj2, qVar6, qVar2);
                this.f = qVar7;
                if (qVar6 != null) {
                    qVar6.h = qVar7;
                }
                if (iJ <= 0) {
                    qVar2.f = qVar7;
                } else {
                    qVar2.g = qVar7;
                }
                if (qVar2.i) {
                    e();
                    try {
                        this.e = c(this.e, qVar7);
                    } finally {
                        this.lockState = 0;
                    }
                } else {
                    qVar7.i = true;
                }
            } else {
                qVar2 = qVar5;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x008e A[PHI: r0
      0x008e: PHI (r0v4 j$.util.concurrent.q) = (r0v3 j$.util.concurrent.q), (r0v12 j$.util.concurrent.q) binds: [B:55:0x008a, B:51:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final boolean g(q qVar) {
        q qVar2;
        q qVar3;
        q qVar4 = (q) qVar.d;
        q qVar5 = qVar.h;
        if (qVar5 == null) {
            this.f = qVar4;
        } else {
            qVar5.d = qVar4;
        }
        if (qVar4 != null) {
            qVar4.h = qVar5;
        }
        if (this.f == null) {
            this.e = null;
            return true;
        }
        q qVarB = this.e;
        if (qVarB == null || qVarB.g == null || (qVar2 = qVarB.f) == null || qVar2.f == null) {
            return true;
        }
        e();
        try {
            q qVar6 = qVar.f;
            q qVar7 = qVar.g;
            if (qVar6 != null && qVar7 != null) {
                q qVar8 = qVar7;
                while (true) {
                    q qVar9 = qVar8.f;
                    if (qVar9 == null) {
                        break;
                    }
                    qVar8 = qVar9;
                }
                boolean z = qVar8.i;
                qVar8.i = qVar.i;
                qVar.i = z;
                q qVar10 = qVar8.g;
                q qVar11 = qVar.e;
                if (qVar8 == qVar7) {
                    qVar.e = qVar8;
                    qVar8.g = qVar;
                } else {
                    q qVar12 = qVar8.e;
                    qVar.e = qVar12;
                    if (qVar12 != null) {
                        if (qVar8 == qVar12.f) {
                            qVar12.f = qVar;
                        } else {
                            qVar12.g = qVar;
                        }
                    }
                    qVar8.g = qVar7;
                    qVar7.e = qVar8;
                }
                qVar.f = null;
                qVar.g = qVar10;
                if (qVar10 != null) {
                    qVar10.e = qVar;
                }
                qVar8.f = qVar6;
                qVar6.e = qVar8;
                qVar8.e = qVar11;
                if (qVar11 == null) {
                    qVarB = qVar8;
                } else if (qVar == qVar11.f) {
                    qVar11.f = qVar8;
                } else {
                    qVar11.g = qVar8;
                }
                if (qVar10 != null) {
                    qVar6 = qVar10;
                }
            } else if (qVar6 == null) {
                qVar6 = qVar7 != null ? qVar7 : qVar;
            }
            if (qVar6 != qVar) {
                q qVar13 = qVar.e;
                qVar6.e = qVar13;
                if (qVar13 == null) {
                    qVarB = qVar6;
                } else if (qVar == qVar13.f) {
                    qVar13.f = qVar6;
                } else {
                    qVar13.g = qVar6;
                }
                qVar.e = null;
                qVar.g = null;
                qVar.f = null;
            }
            if (!qVar.i) {
                qVarB = b(qVarB, qVar6);
            }
            this.e = qVarB;
            if (qVar == qVar6 && (qVar3 = qVar.e) != null) {
                if (qVar == qVar3.f) {
                    qVar3.f = null;
                } else if (qVar == qVar3.g) {
                    qVar3.g = null;
                }
                qVar.e = null;
            }
            this.lockState = 0;
            return false;
        } catch (Throwable th) {
            this.lockState = 0;
            throw th;
        }
    }
}
