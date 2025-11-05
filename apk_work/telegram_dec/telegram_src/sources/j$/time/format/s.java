package j$.time.format;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.ZonedDateTime;
import j$.time.zone.ZoneRules;
import j$.util.A;
import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class s {
    private j$.time.temporal.k a;
    private a b;
    private int c;

    /* JADX WARN: Removed duplicated region for block: B:41:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    s(j$.time.temporal.k kVar, a aVar) {
        ZoneRules rules;
        j$.time.chrono.e eVarB = aVar.b();
        ZoneId zoneIdE = aVar.e();
        if (eVarB != null || zoneIdE != null) {
            j$.time.chrono.e eVar = (j$.time.chrono.e) kVar.i(j$.time.temporal.j.d());
            ZoneId zoneId = (ZoneId) kVar.i(j$.time.temporal.j.j());
            LocalDate localDateO = null;
            eVarB = A.y(eVarB, eVar) ? null : eVarB;
            zoneIdE = A.y(zoneIdE, zoneId) ? null : zoneIdE;
            if (eVarB != null || zoneIdE != null) {
                j$.time.chrono.e eVar2 = eVarB != null ? eVarB : eVar;
                if (zoneIdE == null) {
                    zoneId = zoneIdE != null ? zoneIdE : zoneId;
                    if (eVarB != null) {
                        if (kVar.k(j$.time.temporal.a.EPOCH_DAY)) {
                            ((j$.time.chrono.f) eVar2).getClass();
                            localDateO = LocalDate.o(kVar);
                        } else if (eVarB != j$.time.chrono.f.a || eVar != null) {
                            for (j$.time.temporal.a aVar2 : j$.time.temporal.a.values()) {
                                if (aVar2.k() && kVar.k(aVar2)) {
                                    throw new j$.time.c("Unable to apply override chronology '" + eVarB + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + kVar);
                                }
                            }
                        }
                    }
                    kVar = new r(localDateO, kVar, eVar2, zoneId);
                } else if (kVar.k(j$.time.temporal.a.INSTANT_SECONDS)) {
                    eVar2 = eVar2 == null ? j$.time.chrono.f.a : eVar2;
                    Instant instantO = Instant.o(kVar);
                    ((j$.time.chrono.f) eVar2).getClass();
                    kVar = ZonedDateTime.o(instantO, zoneIdE);
                } else {
                    try {
                        rules = zoneIdE.getRules();
                    } catch (j$.time.zone.c unused) {
                    }
                    ZoneId offset = rules.h() ? rules.getOffset(Instant.c) : zoneIdE;
                    if (offset instanceof ZoneOffset) {
                        j$.time.temporal.a aVar3 = j$.time.temporal.a.OFFSET_SECONDS;
                        if (kVar.k(aVar3) && kVar.j(aVar3) != zoneIdE.getRules().getOffset(Instant.c).getTotalSeconds()) {
                            throw new j$.time.c("Unable to apply override zone '" + zoneIdE + "' because the temporal object being formatted has a different offset but does not represent an instant: " + kVar);
                        }
                    }
                    if (zoneIdE != null) {
                    }
                    if (eVarB != null) {
                    }
                    kVar = new r(localDateO, kVar, eVar2, zoneId);
                }
            }
        }
        this.a = kVar;
        this.b = aVar;
    }

    final void a() {
        this.c--;
    }

    final w b() {
        return this.b.c();
    }

    final Locale c() {
        return this.b.d();
    }

    final j$.time.temporal.k d() {
        return this.a;
    }

    final Long e(j$.time.temporal.l lVar) {
        try {
            return Long.valueOf(this.a.h(lVar));
        } catch (j$.time.c e) {
            if (this.c > 0) {
                return null;
            }
            throw e;
        }
    }

    final Object f(j$.time.temporal.n nVar) {
        j$.time.temporal.k kVar = this.a;
        Object objI = kVar.i(nVar);
        if (objI != null || this.c != 0) {
            return objI;
        }
        throw new j$.time.c("Unable to extract value: " + kVar.getClass());
    }

    final void g() {
        this.c++;
    }

    public final String toString() {
        return this.a.toString();
    }
}
