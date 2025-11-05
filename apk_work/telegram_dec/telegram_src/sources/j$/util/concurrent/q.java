package j$.util.concurrent;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class q extends k {
    q e;
    q f;
    q g;
    q h;
    boolean i;

    q(int i, Object obj, Object obj2, q qVar, q qVar2) {
        super(i, obj, obj2, qVar);
        this.e = qVar2;
    }

    @Override // j$.util.concurrent.k
    final k a(Object obj, int i) {
        return b(i, obj, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0047 A[PHI: r8
      0x0047: PHI (r8v5 java.lang.Class) = (r8v4 java.lang.Class), (r8v6 java.lang.Class) binds: [B:29:0x0040, B:21:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final q b(int i, Object obj, Class cls) {
        if (obj == null) {
            return null;
        }
        q qVar = this;
        do {
            q qVar2 = qVar.f;
            q qVar3 = qVar.g;
            int i2 = qVar.a;
            if (i2 <= i) {
                if (i2 >= i) {
                    Object obj2 = qVar.b;
                    if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                        return qVar;
                    }
                    if (qVar2 != null) {
                        if (qVar3 != null) {
                            if (cls != null || (cls = ConcurrentHashMap.c(obj)) != null) {
                                int i3 = ConcurrentHashMap.i;
                                int iCompareTo = (obj2 == null || obj2.getClass() != cls) ? 0 : ((Comparable) obj).compareTo(obj2);
                                if (iCompareTo == 0) {
                                    q qVarB = qVar3.b(i, obj, cls);
                                    if (qVarB != null) {
                                        return qVarB;
                                    }
                                } else if (iCompareTo >= 0) {
                                    qVar2 = qVar3;
                                }
                            }
                        }
                        qVar = qVar2;
                    }
                }
                qVar = qVar3;
            } else {
                qVar = qVar2;
            }
        } while (qVar != null);
        return null;
    }
}
