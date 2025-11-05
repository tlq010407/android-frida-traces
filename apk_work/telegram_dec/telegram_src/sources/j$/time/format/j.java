package j$.time.format;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class j implements g {
    static final long[] f = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000L};
    final j$.time.temporal.l a;
    final int b;
    final int c;
    private final y d;
    final int e;

    j(j$.time.temporal.l lVar, int i, int i2, y yVar) {
        this.a = lVar;
        this.b = i;
        this.c = i2;
        this.d = yVar;
        this.e = 0;
    }

    protected j(j$.time.temporal.l lVar, int i, int i2, y yVar, int i3) {
        this.a = lVar;
        this.b = i;
        this.c = i2;
        this.d = yVar;
        this.e = i3;
    }

    final j b() {
        if (this.e == -1) {
            return this;
        }
        return new j(this.a, this.b, this.c, this.d, -1);
    }

    final j c(int i) {
        return new j(this.a, this.b, this.c, this.d, this.e + i);
    }

    @Override // j$.time.format.g
    public final boolean f(s sVar, StringBuilder sb) {
        j$.time.temporal.l lVar = this.a;
        Long lE = sVar.e(lVar);
        if (lE == null) {
            return false;
        }
        long jLongValue = lE.longValue();
        w wVarB = sVar.b();
        String string = jLongValue == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(jLongValue));
        int length = string.length();
        int i = this.c;
        if (length > i) {
            throw new j$.time.c("Field " + lVar + " cannot be printed as the value " + jLongValue + " exceeds the maximum print width of " + i);
        }
        wVarB.getClass();
        int i2 = this.b;
        y yVar = this.d;
        if (jLongValue >= 0) {
            int i3 = d.a[yVar.ordinal()];
            if (i3 == 1 ? !(i2 >= 19 || jLongValue < f[i2]) : i3 == 2) {
                sb.append('+');
            }
        } else {
            int i4 = d.a[yVar.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                sb.append('-');
            } else if (i4 == 4) {
                throw new j$.time.c("Field " + lVar + " cannot be printed as the value " + jLongValue + " cannot be negative according to the SignStyle");
            }
        }
        for (int i5 = 0; i5 < i2 - string.length(); i5++) {
            sb.append('0');
        }
        sb.append(string);
        return true;
    }

    public final String toString() {
        j$.time.temporal.l lVar = this.a;
        y yVar = this.d;
        int i = this.c;
        int i2 = this.b;
        if (i2 == 1 && i == 19 && yVar == y.NORMAL) {
            return "Value(" + lVar + ")";
        }
        if (i2 == i && yVar == y.NOT_NEGATIVE) {
            return "Value(" + lVar + "," + i2 + ")";
        }
        return "Value(" + lVar + "," + i2 + "," + i + "," + yVar + ")";
    }
}
