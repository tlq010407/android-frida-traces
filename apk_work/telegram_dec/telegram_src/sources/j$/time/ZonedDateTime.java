package j$.time;

import j$.time.chrono.ChronoZonedDateTime;
import j$.time.temporal.p;
import j$.time.temporal.q;
import j$.time.zone.ZoneRules;
import j$.util.A;
import java.io.Serializable;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final class ZonedDateTime implements j$.time.temporal.k, ChronoZonedDateTime<LocalDate>, Serializable {
    private final LocalDateTime a;
    private final ZoneOffset b;
    private final ZoneId c;

    private ZonedDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        this.a = localDateTime;
        this.b = zoneOffset;
        this.c = zoneId;
    }

    public static ZonedDateTime n(LocalDateTime localDateTime, ZoneId zoneId) {
        ZoneOffset zoneOffsetJ;
        A.z(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new ZonedDateTime(localDateTime, (ZoneOffset) zoneId, zoneId);
        }
        ZoneRules rules = zoneId.getRules();
        List listF = rules.f(localDateTime);
        if (listF.size() == 1) {
            zoneOffsetJ = (ZoneOffset) listF.get(0);
        } else if (listF.size() == 0) {
            j$.time.zone.a aVarE = rules.e(localDateTime);
            localDateTime = localDateTime.v(aVarE.i().h());
            zoneOffsetJ = aVarE.j();
        } else {
            zoneOffsetJ = (ZoneOffset) listF.get(0);
            A.z(zoneOffsetJ, "offset");
        }
        return new ZonedDateTime(localDateTime, zoneOffsetJ, zoneId);
    }

    public static ZonedDateTime o(Instant instant, ZoneId zoneId) {
        A.z(instant, "instant");
        long jP = instant.p();
        int iQ = instant.q();
        ZoneOffset offset = zoneId.getRules().getOffset(Instant.s(jP, iQ));
        return new ZonedDateTime(LocalDateTime.u(jP, iQ, offset), offset, zoneId);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final h a() {
        return this.a.a();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final j$.time.chrono.e b() {
        this.a.x().getClass();
        return j$.time.chrono.f.a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneOffset c() {
        return this.b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final LocalDateTime e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ZonedDateTime)) {
            return false;
        }
        ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
        return this.a.equals(zonedDateTime.a) && this.b.equals(zonedDateTime.b) && this.c.equals(zonedDateTime.c);
    }

    @Override // j$.time.temporal.k
    public final q f(j$.time.temporal.l lVar) {
        return lVar instanceof j$.time.temporal.a ? (lVar == j$.time.temporal.a.INSTANT_SECONDS || lVar == j$.time.temporal.a.OFFSET_SECONDS) ? ((j$.time.temporal.a) lVar).f() : this.a.f(lVar) : lVar.j(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneId g() {
        return this.c;
    }

    @Override // j$.time.temporal.k
    public final long h(j$.time.temporal.l lVar) {
        if (!(lVar instanceof j$.time.temporal.a)) {
            return lVar.h(this);
        }
        int i = n.a[((j$.time.temporal.a) lVar).ordinal()];
        return i != 1 ? i != 2 ? this.a.h(lVar) : this.b.getTotalSeconds() : l();
    }

    public final int hashCode() {
        return (this.a.hashCode() ^ this.b.hashCode()) ^ Integer.rotateLeft(this.c.hashCode(), 3);
    }

    @Override // j$.time.temporal.k
    public final Object i(j$.time.temporal.n nVar) {
        j$.time.temporal.m mVarE = j$.time.temporal.j.e();
        LocalDateTime localDateTime = this.a;
        return nVar == mVarE ? localDateTime.x() : (nVar == j$.time.temporal.j.i() || nVar == j$.time.temporal.j.j()) ? this.c : nVar == j$.time.temporal.j.g() ? this.b : nVar == j$.time.temporal.j.f() ? localDateTime.a() : nVar == j$.time.temporal.j.d() ? b() : nVar == j$.time.temporal.j.h() ? j$.time.temporal.b.NANOS : nVar.a(this);
    }

    @Override // j$.time.temporal.k
    public final int j(j$.time.temporal.a aVar) {
        if (!(aVar instanceof j$.time.temporal.a)) {
            return j$.time.chrono.c.a(this, aVar);
        }
        int i = n.a[aVar.ordinal()];
        if (i != 1) {
            return i != 2 ? this.a.j(aVar) : this.b.getTotalSeconds();
        }
        throw new p("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.temporal.k
    public final boolean k(j$.time.temporal.l lVar) {
        return (lVar instanceof j$.time.temporal.a) || (lVar != null && lVar.i(this));
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final long l() {
        return ((this.a.x().y() * 86400) + r0.a().t()) - this.b.getTotalSeconds();
    }

    @Override // java.lang.Comparable
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ChronoZonedDateTime chronoZonedDateTime) {
        int iCompare = Long.compare(l(), chronoZonedDateTime.l());
        if (iCompare != 0) {
            return iCompare;
        }
        LocalDateTime localDateTime = this.a;
        int iO = localDateTime.a().o() - chronoZonedDateTime.a().o();
        if (iO != 0) {
            return iO;
        }
        int iM = localDateTime.compareTo(chronoZonedDateTime.e());
        if (iM != 0) {
            return iM;
        }
        int iCompareTo = this.c.getId().compareTo(chronoZonedDateTime.g().getId());
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        j$.time.chrono.e eVarB = b();
        j$.time.chrono.e eVarB2 = chronoZonedDateTime.b();
        ((j$.time.chrono.a) eVarB).getClass();
        eVarB2.getClass();
        return 0;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final Instant toInstant() {
        return Instant.s(l(), a().o());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a.toString());
        ZoneOffset zoneOffset = this.b;
        sb.append(zoneOffset.toString());
        String string = sb.toString();
        ZoneId zoneId = this.c;
        if (zoneOffset == zoneId) {
            return string;
        }
        return string + '[' + zoneId.toString() + ']';
    }
}
