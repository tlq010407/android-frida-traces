package j$.util.concurrent;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
class o {
    k[] a;
    k b = null;
    n c;
    n d;
    int e;
    int f;
    int g;
    final int h;

    o(k[] kVarArr, int i, int i2, int i3) {
        this.a = kVarArr;
        this.h = i;
        this.e = i2;
        this.f = i2;
        this.g = i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x005f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final k b() {
        k[] kVarArr;
        int length;
        int i;
        n nVar;
        k kVar = this.b;
        if (kVar != null) {
            kVar = kVar.d;
        }
        while (kVar == null) {
            if (this.f >= this.g || (kVarArr = this.a) == null || (length = kVarArr.length) <= (i = this.e) || i < 0) {
                this.b = null;
                return null;
            }
            k kVarL = ConcurrentHashMap.l(kVarArr, i);
            if (kVarL == null || kVarL.a >= 0) {
                kVar = kVarL;
                if (this.c == null) {
                    while (true) {
                        nVar = this.c;
                        if (nVar == null) {
                            break;
                        }
                        int i2 = this.e;
                        int i3 = nVar.a;
                        int i4 = i2 + i3;
                        this.e = i4;
                        if (i4 < length) {
                            break;
                        }
                        this.e = nVar.b;
                        this.a = nVar.c;
                        nVar.c = null;
                        n nVar2 = nVar.d;
                        nVar.d = this.d;
                        this.c = nVar2;
                        this.d = nVar;
                        length = i3;
                    }
                    if (nVar == null) {
                        int i5 = this.e + this.h;
                        this.e = i5;
                        if (i5 >= length) {
                            int i6 = this.f + 1;
                            this.f = i6;
                            this.e = i6;
                        }
                    }
                } else {
                    int i7 = i + this.h;
                    this.e = i7;
                    if (i7 >= length) {
                        int i8 = this.f + 1;
                        this.f = i8;
                        this.e = i8;
                    }
                }
            } else if (kVarL instanceof f) {
                this.a = ((f) kVarL).e;
                n nVar3 = this.d;
                if (nVar3 != null) {
                    this.d = nVar3.d;
                } else {
                    nVar3 = new n();
                }
                nVar3.c = kVarArr;
                nVar3.a = length;
                nVar3.b = i;
                nVar3.d = this.c;
                this.c = nVar3;
                kVar = null;
            } else {
                kVar = kVarL instanceof p ? ((p) kVarL).f : null;
                if (this.c == null) {
                }
            }
        }
        this.b = kVar;
        return kVar;
    }
}
