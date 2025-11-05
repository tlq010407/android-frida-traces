package j$.time.format;

import j$.util.A;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class h implements g {
    private final j$.time.temporal.l a;
    private final int b;
    private final int c;
    private final boolean d;

    h(j$.time.temporal.a aVar) {
        A.z(aVar, "field");
        if (!aVar.f().f()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + aVar);
        }
        this.a = aVar;
        this.b = 0;
        this.c = 9;
        this.d = true;
    }

    @Override // j$.time.format.g
    public final boolean f(s sVar, StringBuilder sb) {
        j$.time.temporal.l lVar = this.a;
        Long lE = sVar.e(lVar);
        if (lE == null) {
            return false;
        }
        w wVarB = sVar.b();
        long jLongValue = lE.longValue();
        j$.time.temporal.q qVarF = lVar.f();
        qVarF.b(jLongValue, lVar);
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(qVarF.e());
        BigDecimal bigDecimalAdd = BigDecimal.valueOf(qVarF.d()).subtract(bigDecimalValueOf).add(BigDecimal.ONE);
        BigDecimal bigDecimalSubtract = BigDecimal.valueOf(jLongValue).subtract(bigDecimalValueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal bigDecimalDivide = bigDecimalSubtract.divide(bigDecimalAdd, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (bigDecimalDivide.compareTo(bigDecimal) != 0) {
            bigDecimal = bigDecimalDivide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimalDivide.stripTrailingZeros();
        }
        int iScale = bigDecimal.scale();
        boolean z = this.d;
        int i = this.b;
        if (iScale != 0) {
            String strSubstring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.c), roundingMode).toPlainString().substring(2);
            wVarB.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(strSubstring);
            return true;
        }
        if (i <= 0) {
            return true;
        }
        if (z) {
            wVarB.getClass();
            sb.append('.');
        }
        for (int i2 = 0; i2 < i; i2++) {
            wVarB.getClass();
            sb.append('0');
        }
        return true;
    }

    public final String toString() {
        return "Fraction(" + this.a + "," + this.b + "," + this.c + (this.d ? ",DecimalPoint" : "") + ")";
    }
}
