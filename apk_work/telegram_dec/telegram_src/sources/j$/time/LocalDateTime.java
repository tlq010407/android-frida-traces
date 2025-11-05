package j$.time;

import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.temporal.q;
import j$.util.A;
import java.io.Serializable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final class LocalDateTime implements j$.time.temporal.k, ChronoLocalDateTime<LocalDate>, Serializable {
    private final LocalDate a;
    private final h b;

    static {
        t(LocalDate.d, h.e);
        t(LocalDate.e, h.f);
    }

    private LocalDateTime(LocalDate localDate, h hVar) {
        this.a = localDate;
        this.b = hVar;
    }

    private int n(LocalDateTime localDateTime) {
        int iN = this.a.n(localDateTime.a);
        return iN == 0 ? this.b.compareTo(localDateTime.b) : iN;
    }

    public static LocalDateTime s(int i) {
        return new LocalDateTime(LocalDate.of(i, 12, 31), h.q());
    }

    public static LocalDateTime t(LocalDate localDate, h hVar) {
        A.z(localDate, "date");
        A.z(hVar, CrashHianalyticsData.TIME);
        return new LocalDateTime(localDate, hVar);
    }

    public static LocalDateTime u(long j, int i, ZoneOffset zoneOffset) {
        A.z(zoneOffset, "offset");
        long j2 = i;
        j$.time.temporal.a.NANO_OF_SECOND.n(j2);
        return new LocalDateTime(LocalDate.v(j$.com.android.tools.r8.a.j(j + zoneOffset.getTotalSeconds(), 86400L)), h.r((((int) j$.com.android.tools.r8.a.i(r5, 86400L)) * 1000000000) + j2));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final h a() {
        return this.b;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final j$.time.chrono.e b() {
        this.a.getClass();
        return j$.time.chrono.f.a;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final LocalDate d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocalDateTime)) {
            return false;
        }
        LocalDateTime localDateTime = (LocalDateTime) obj;
        return this.a.equals(localDateTime.a) && this.b.equals(localDateTime.b);
    }

    @Override // j$.time.temporal.k
    public final q f(j$.time.temporal.l lVar) {
        if (!(lVar instanceof j$.time.temporal.a)) {
            return lVar.j(this);
        }
        if (!((j$.time.temporal.a) lVar).o()) {
            return this.a.f(lVar);
        }
        h hVar = this.b;
        hVar.getClass();
        return j$.time.temporal.j.c(hVar, lVar);
    }

    @Override // j$.time.temporal.k
    public final long h(j$.time.temporal.l lVar) {
        return lVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) lVar).o() ? this.b.h(lVar) : this.a.h(lVar) : lVar.h(this);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    @Override // j$.time.temporal.k
    public final Object i(j$.time.temporal.n nVar) {
        if (nVar == j$.time.temporal.j.e()) {
            return this.a;
        }
        if (nVar == j$.time.temporal.j.j() || nVar == j$.time.temporal.j.i() || nVar == j$.time.temporal.j.g()) {
            return null;
        }
        return nVar == j$.time.temporal.j.f() ? this.b : nVar == j$.time.temporal.j.d() ? b() : nVar == j$.time.temporal.j.h() ? j$.time.temporal.b.NANOS : nVar.a(this);
    }

    @Override // j$.time.temporal.k
    public final int j(j$.time.temporal.a aVar) {
        return aVar instanceof j$.time.temporal.a ? aVar.o() ? this.b.j(aVar) : this.a.j(aVar) : j$.time.temporal.j.a(this, aVar);
    }

    @Override // j$.time.temporal.k
    public final boolean k(j$.time.temporal.l lVar) {
        if (!(lVar instanceof j$.time.temporal.a)) {
            return lVar != null && lVar.i(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) lVar;
        return aVar.k() || aVar.o();
    }

    @Override // java.lang.Comparable
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        if (chronoLocalDateTime instanceof LocalDateTime) {
            return n((LocalDateTime) chronoLocalDateTime);
        }
        int iCompareTo = this.a.compareTo(chronoLocalDateTime.d());
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        int iM = this.b.compareTo(chronoLocalDateTime.a());
        if (iM != 0) {
            return iM;
        }
        j$.time.chrono.e eVarB = b();
        j$.time.chrono.e eVarB2 = chronoLocalDateTime.b();
        ((j$.time.chrono.a) eVarB).getClass();
        eVarB2.getClass();
        return 0;
    }

    public final int o() {
        return this.b.p();
    }

    public final int p() {
        return this.a.getYear();
    }

    public final boolean q(LocalDateTime localDateTime) {
        if (localDateTime instanceof LocalDateTime) {
            return n(localDateTime) > 0;
        }
        long jY = this.a.y();
        long jY2 = localDateTime.a.y();
        return jY > jY2 || (jY == jY2 && this.b.s() > localDateTime.b.s());
    }

    public final boolean r(LocalDateTime localDateTime) {
        if (localDateTime instanceof LocalDateTime) {
            return n(localDateTime) < 0;
        }
        long jY = this.a.y();
        long jY2 = localDateTime.a.y();
        return jY < jY2 || (jY == jY2 && this.b.s() < localDateTime.b.s());
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final Instant toInstant(ZoneOffset zoneOffset) {
        return Instant.s(w(zoneOffset), a().o());
    }

    public final String toString() {
        return this.a.toString() + 'T' + this.b.toString();
    }

    public final LocalDateTime v(long j) {
        if (j != 0) {
            long j2 = 1;
            long j3 = (j / 86400) * j2;
            h hVar = this.b;
            long jS = hVar.s();
            long j4 = ((j % 86400) * 1000000000 * j2) + jS;
            long j5 = j$.com.android.tools.r8.a.j(j4, 86400000000000L) + j3;
            long jI = j$.com.android.tools.r8.a.i(j4, 86400000000000L);
            h hVarR = jI == jS ? hVar : h.r(jI);
            LocalDate localDate = this.a;
            LocalDate localDatePlusDays = localDate.plusDays(j5);
            if (localDate != localDatePlusDays || hVar != hVarR) {
                return new LocalDateTime(localDatePlusDays, hVarR);
            }
        }
        return this;
    }

    public final long w(ZoneOffset zoneOffset) {
        A.z(zoneOffset, "offset");
        return ((this.a.y() * 86400) + this.b.t()) - zoneOffset.getTotalSeconds();
    }

    public final LocalDate x() {
        return this.a;
    }
}
