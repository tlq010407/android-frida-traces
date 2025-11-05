package j$.time;

import j$.time.format.TextStyle;
import j$.time.temporal.p;
import j$.time.temporal.q;
import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public enum DayOfWeek implements j$.time.temporal.k {
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY;

    private static final DayOfWeek[] a = values();

    public static DayOfWeek m(int i) {
        if (i >= 1 && i <= 7) {
            return a[i - 1];
        }
        throw new c("Invalid value for DayOfWeek: " + i);
    }

    @Override // j$.time.temporal.k
    public final q f(j$.time.temporal.l lVar) {
        return lVar == j$.time.temporal.a.DAY_OF_WEEK ? lVar.f() : j$.time.temporal.j.c(this, lVar);
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        j$.time.format.q qVar = new j$.time.format.q();
        qVar.i(j$.time.temporal.a.DAY_OF_WEEK, textStyle);
        return qVar.v(locale).a(this);
    }

    @Override // j$.time.temporal.k
    public final long h(j$.time.temporal.l lVar) {
        if (lVar == j$.time.temporal.a.DAY_OF_WEEK) {
            return ordinal() + 1;
        }
        if (!(lVar instanceof j$.time.temporal.a)) {
            return lVar.h(this);
        }
        throw new p("Unsupported field: " + lVar);
    }

    @Override // j$.time.temporal.k
    public final Object i(j$.time.temporal.n nVar) {
        return nVar == j$.time.temporal.j.h() ? j$.time.temporal.b.DAYS : j$.time.temporal.j.b(this, nVar);
    }

    @Override // j$.time.temporal.k
    public final int j(j$.time.temporal.a aVar) {
        return aVar == j$.time.temporal.a.DAY_OF_WEEK ? ordinal() + 1 : j$.time.temporal.j.a(this, aVar);
    }

    @Override // j$.time.temporal.k
    public final boolean k(j$.time.temporal.l lVar) {
        return lVar instanceof j$.time.temporal.a ? lVar == j$.time.temporal.a.DAY_OF_WEEK : lVar != null && lVar.i(this);
    }
}
