package j$.time.format;

import j$.time.LocalDateTime;
import j$.time.ZoneOffset;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class i implements g {
    i() {
    }

    @Override // j$.time.format.g
    public final boolean f(s sVar, StringBuilder sb) {
        Long lE = sVar.e(j$.time.temporal.a.INSTANT_SECONDS);
        j$.time.temporal.k kVarD = sVar.d();
        j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_SECOND;
        Long lValueOf = kVarD.k(aVar) ? Long.valueOf(sVar.d().h(aVar)) : null;
        int i = 0;
        if (lE == null) {
            return false;
        }
        long jLongValue = lE.longValue();
        int iM = aVar.m(lValueOf != null ? lValueOf.longValue() : 0L);
        if (jLongValue >= -62167219200L) {
            long j = jLongValue - 253402300800L;
            long j2 = j$.com.android.tools.r8.a.j(j, 315569520000L) + 1;
            LocalDateTime localDateTimeU = LocalDateTime.u(j$.com.android.tools.r8.a.i(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
            if (j2 > 0) {
                sb.append('+');
                sb.append(j2);
            }
            sb.append(localDateTimeU);
            if (localDateTimeU.o() == 0) {
                sb.append(":00");
            }
        } else {
            long j3 = jLongValue + 62167219200L;
            long j4 = j3 / 315569520000L;
            long j5 = j3 % 315569520000L;
            LocalDateTime localDateTimeU2 = LocalDateTime.u(j5 - 62167219200L, 0, ZoneOffset.UTC);
            int length = sb.length();
            sb.append(localDateTimeU2);
            if (localDateTimeU2.o() == 0) {
                sb.append(":00");
            }
            if (j4 < 0) {
                if (localDateTimeU2.p() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j4 - 1));
                } else if (j5 == 0) {
                    sb.insert(length, j4);
                } else {
                    sb.insert(length + 1, Math.abs(j4));
                }
            }
        }
        if (iM > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (iM <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = iM / i2;
                sb.append((char) (i3 + 48));
                iM -= i3 * i2;
                i2 /= 10;
                i++;
            }
        }
        sb.append('Z');
        return true;
    }

    public final String toString() {
        return "Instant()";
    }
}
