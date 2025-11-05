package j$.util.concurrent;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class f extends k {
    final k[] e;

    f(k[] kVarArr) {
        super(-1, null, null, null);
        this.e = kVarArr;
    }

    @Override // j$.util.concurrent.k
    final k a(Object obj, int i) {
        int length;
        k kVarL;
        Object obj2;
        k[] kVarArr = this.e;
        loop0: while (obj != null && kVarArr != null && (length = kVarArr.length) != 0 && (kVarL = ConcurrentHashMap.l(kVarArr, (length - 1) & i)) != null) {
            do {
                int i2 = kVarL.a;
                if (i2 == i && ((obj2 = kVarL.b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return kVarL;
                }
                if (i2 >= 0) {
                    kVarL = kVarL.d;
                } else {
                    if (!(kVarL instanceof f)) {
                        return kVarL.a(obj, i);
                    }
                    kVarArr = ((f) kVarL).e;
                }
            } while (kVarL != null);
        }
        return null;
    }
}
