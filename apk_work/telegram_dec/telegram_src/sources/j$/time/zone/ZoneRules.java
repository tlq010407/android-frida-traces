package j$.time.zone;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.util.A;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final class ZoneRules implements Serializable {
    private static final long[] i = new long[0];
    private static final b[] j = new b[0];
    private static final LocalDateTime[] k = new LocalDateTime[0];
    private static final a[] l = new a[0];
    private final long[] a;
    private final ZoneOffset[] b;
    private final long[] c;
    private final LocalDateTime[] d;
    private final ZoneOffset[] e;
    private final b[] f;
    private final TimeZone g;
    private final transient ConcurrentHashMap h = new ConcurrentHashMap();

    private ZoneRules(ZoneOffset zoneOffset) {
        ZoneOffset[] zoneOffsetArr = {zoneOffset};
        this.b = zoneOffsetArr;
        long[] jArr = i;
        this.a = jArr;
        this.c = jArr;
        this.d = k;
        this.e = zoneOffsetArr;
        this.f = j;
        this.g = null;
    }

    ZoneRules(TimeZone timeZone) {
        ZoneOffset[] zoneOffsetArr = {j(timeZone.getRawOffset())};
        this.b = zoneOffsetArr;
        long[] jArr = i;
        this.a = jArr;
        this.c = jArr;
        this.d = k;
        this.e = zoneOffsetArr;
        this.f = j;
        this.g = timeZone;
    }

    private static Object a(LocalDateTime localDateTime, a aVar) {
        LocalDateTime localDateTimeH = aVar.h();
        boolean zN = aVar.n();
        boolean zR = localDateTime.r(localDateTimeH);
        return zN ? zR ? aVar.k() : localDateTime.r(aVar.f()) ? aVar : aVar.j() : !zR ? aVar.j() : localDateTime.r(aVar.f()) ? aVar.k() : aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private a[] b(int i2) {
        long j2;
        Integer numValueOf = Integer.valueOf(i2);
        ConcurrentHashMap concurrentHashMap = this.h;
        a[] aVarArr = (a[]) concurrentHashMap.get(numValueOf);
        if (aVarArr != null) {
            return aVarArr;
        }
        TimeZone timeZone = this.g;
        if (timeZone == null) {
            b[] bVarArr = this.f;
            a[] aVarArr2 = new a[bVarArr.length];
            if (bVarArr.length > 0) {
                b bVar = bVarArr[0];
                throw null;
            }
            if (i2 < 2100) {
                concurrentHashMap.putIfAbsent(numValueOf, aVarArr2);
            }
            return aVarArr2;
        }
        a[] aVarArr3 = l;
        if (i2 < 1800) {
            return aVarArr3;
        }
        long jW = LocalDateTime.s(i2 - 1).w(this.b[0]);
        int offset = timeZone.getOffset(jW * 1000);
        long j3 = 31968000 + jW;
        while (jW < j3) {
            long j4 = 7776000 + jW;
            long j5 = jW;
            if (offset != timeZone.getOffset(j4 * 1000)) {
                jW = j5;
                while (j4 - jW > 1) {
                    int i3 = offset;
                    long j6 = j3;
                    long j7 = j$.com.android.tools.r8.a.j(j4 + jW, 2L);
                    if (timeZone.getOffset(j7 * 1000) == i3) {
                        jW = j7;
                    } else {
                        j4 = j7;
                    }
                    offset = i3;
                    j3 = j6;
                }
                j2 = j3;
                int i4 = offset;
                if (timeZone.getOffset(jW * 1000) == i4) {
                    jW = j4;
                }
                ZoneOffset zoneOffsetJ = j(i4);
                offset = timeZone.getOffset(jW * 1000);
                ZoneOffset zoneOffsetJ2 = j(offset);
                if (c(jW, zoneOffsetJ2) == i2) {
                    aVarArr3 = (a[]) Arrays.copyOf(aVarArr3, aVarArr3.length + 1);
                    aVarArr3[aVarArr3.length - 1] = new a(jW, zoneOffsetJ, zoneOffsetJ2);
                }
            } else {
                j2 = j3;
                jW = j4;
            }
            j3 = j2;
        }
        if (1916 <= i2 && i2 < 2100) {
            concurrentHashMap.putIfAbsent(numValueOf, aVarArr3);
        }
        return aVarArr3;
    }

    private static int c(long j2, ZoneOffset zoneOffset) {
        return LocalDate.v(j$.com.android.tools.r8.a.j(j2 + zoneOffset.getTotalSeconds(), 86400L)).getYear();
    }

    private Object d(LocalDateTime localDateTime) {
        Object obj = null;
        ZoneOffset[] zoneOffsetArr = this.b;
        int i2 = 0;
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            a[] aVarArrB = b(localDateTime.p());
            if (aVarArrB.length == 0) {
                return j(timeZone.getOffset(localDateTime.w(zoneOffsetArr[0]) * 1000));
            }
            int length = aVarArrB.length;
            while (i2 < length) {
                a aVar = aVarArrB[i2];
                Object objA = a(localDateTime, aVar);
                if ((objA instanceof a) || objA.equals(aVar.k())) {
                    return objA;
                }
                i2++;
                obj = objA;
            }
            return obj;
        }
        if (this.c.length == 0) {
            return zoneOffsetArr[0];
        }
        int length2 = this.f.length;
        LocalDateTime[] localDateTimeArr = this.d;
        if (length2 > 0 && localDateTime.q(localDateTimeArr[localDateTimeArr.length - 1])) {
            a[] aVarArrB2 = b(localDateTime.p());
            int length3 = aVarArrB2.length;
            while (i2 < length3) {
                a aVar2 = aVarArrB2[i2];
                Object objA2 = a(localDateTime, aVar2);
                if ((objA2 instanceof a) || objA2.equals(aVar2.k())) {
                    return objA2;
                }
                i2++;
                obj = objA2;
            }
            return obj;
        }
        int iBinarySearch = Arrays.binarySearch(localDateTimeArr, localDateTime);
        ZoneOffset[] zoneOffsetArr2 = this.e;
        if (iBinarySearch == -1) {
            return zoneOffsetArr2[0];
        }
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        } else if (iBinarySearch < localDateTimeArr.length - 1) {
            int i3 = iBinarySearch + 1;
            if (localDateTimeArr[iBinarySearch].equals(localDateTimeArr[i3])) {
                iBinarySearch = i3;
            }
        }
        if ((iBinarySearch & 1) != 0) {
            return zoneOffsetArr2[(iBinarySearch / 2) + 1];
        }
        LocalDateTime localDateTime2 = localDateTimeArr[iBinarySearch];
        LocalDateTime localDateTime3 = localDateTimeArr[iBinarySearch + 1];
        int i4 = iBinarySearch / 2;
        ZoneOffset zoneOffset = zoneOffsetArr2[i4];
        ZoneOffset zoneOffset2 = zoneOffsetArr2[i4 + 1];
        return zoneOffset2.getTotalSeconds() > zoneOffset.getTotalSeconds() ? new a(localDateTime2, zoneOffset, zoneOffset2) : new a(localDateTime3, zoneOffset, zoneOffset2);
    }

    public static ZoneRules i(ZoneOffset zoneOffset) {
        A.z(zoneOffset, "offset");
        return new ZoneRules(zoneOffset);
    }

    private static ZoneOffset j(int i2) {
        return ZoneOffset.q(i2 / 1000);
    }

    public final a e(LocalDateTime localDateTime) {
        Object objD = d(localDateTime);
        if (objD instanceof a) {
            return (a) objD;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ZoneRules)) {
            return false;
        }
        ZoneRules zoneRules = (ZoneRules) obj;
        return A.y(this.g, zoneRules.g) && Arrays.equals(this.a, zoneRules.a) && Arrays.equals(this.b, zoneRules.b) && Arrays.equals(this.c, zoneRules.c) && Arrays.equals(this.e, zoneRules.e) && Arrays.equals(this.f, zoneRules.f);
    }

    public final List f(LocalDateTime localDateTime) {
        Object objD = d(localDateTime);
        return objD instanceof a ? ((a) objD).m() : Collections.singletonList((ZoneOffset) objD);
    }

    public final boolean g(Instant instant) {
        ZoneOffset zoneOffsetJ;
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            zoneOffsetJ = j(timeZone.getRawOffset());
        } else {
            int length = this.c.length;
            ZoneOffset[] zoneOffsetArr = this.b;
            if (length == 0) {
                zoneOffsetJ = zoneOffsetArr[0];
            } else {
                int iBinarySearch = Arrays.binarySearch(this.a, instant.p());
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 2;
                }
                zoneOffsetJ = zoneOffsetArr[iBinarySearch + 1];
            }
        }
        return !zoneOffsetJ.equals(getOffset(instant));
    }

    public ZoneOffset getOffset(Instant instant) {
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            return j(timeZone.getOffset(instant.toEpochMilli()));
        }
        long[] jArr = this.c;
        if (jArr.length == 0) {
            return this.b[0];
        }
        long jP = instant.p();
        int length = this.f.length;
        ZoneOffset[] zoneOffsetArr = this.e;
        if (length <= 0 || jP <= jArr[jArr.length - 1]) {
            int iBinarySearch = Arrays.binarySearch(jArr, jP);
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            return zoneOffsetArr[iBinarySearch + 1];
        }
        a[] aVarArrB = b(c(jP, zoneOffsetArr[zoneOffsetArr.length - 1]));
        a aVar = null;
        for (int i2 = 0; i2 < aVarArrB.length; i2++) {
            aVar = aVarArrB[i2];
            if (jP < aVar.l()) {
                return aVar.k();
            }
        }
        return aVar.j();
    }

    public final boolean h() {
        a aVar;
        TimeZone timeZone = this.g;
        if (timeZone == null) {
            return this.c.length == 0;
        }
        if (timeZone.useDaylightTime() || timeZone.getDSTSavings() != 0) {
            return false;
        }
        Instant instantNow = Instant.now();
        long jP = instantNow.p();
        if (instantNow.q() > 0 && jP < Long.MAX_VALUE) {
            jP++;
        }
        int iC = c(jP, getOffset(instantNow));
        a[] aVarArrB = b(iC);
        int length = aVarArrB.length - 1;
        while (true) {
            if (length >= 0) {
                if (jP > aVarArrB[length].l()) {
                    aVar = aVarArrB[length];
                    break;
                }
                length--;
            } else if (iC > 1800) {
                a[] aVarArrB2 = b(iC - 1);
                int length2 = aVarArrB2.length - 1;
                while (true) {
                    if (length2 < 0) {
                        int offset = timeZone.getOffset((jP - 1) * 1000);
                        long jY = LocalDate.of(1800, 1, 1).y() * 86400;
                        for (long jMin = Math.min(jP - 31104000, (j$.time.b.b().a() / 1000) + 31968000); jY <= jMin; jMin -= 7776000) {
                            int offset2 = timeZone.getOffset(jMin * 1000);
                            if (offset != offset2) {
                                int iC2 = c(jMin, j(offset2));
                                a[] aVarArrB3 = b(iC2 + 1);
                                int length3 = aVarArrB3.length - 1;
                                while (true) {
                                    if (length3 < 0) {
                                        a[] aVarArrB4 = b(iC2);
                                        aVar = aVarArrB4[aVarArrB4.length - 1];
                                        break;
                                    }
                                    if (jP > aVarArrB3[length3].l()) {
                                        aVar = aVarArrB3[length3];
                                        break;
                                    }
                                    length3--;
                                }
                            }
                        }
                    } else {
                        if (jP > aVarArrB2[length2].l()) {
                            aVar = aVarArrB2[length2];
                            break;
                        }
                        length2--;
                    }
                }
            } else {
                aVar = null;
            }
        }
        return aVar == null;
    }

    public final int hashCode() {
        TimeZone timeZone = this.g;
        return (((((timeZone != null ? timeZone.hashCode() : 0) ^ Arrays.hashCode(this.a)) ^ Arrays.hashCode(this.b)) ^ Arrays.hashCode(this.c)) ^ Arrays.hashCode(this.e)) ^ Arrays.hashCode(this.f);
    }

    public final String toString() {
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            return "ZoneRules[timeZone=" + timeZone.getID() + "]";
        }
        StringBuilder sb = new StringBuilder("ZoneRules[currentStandardOffset=");
        sb.append(this.b[r2.length - 1]);
        sb.append("]");
        return sb.toString();
    }
}
