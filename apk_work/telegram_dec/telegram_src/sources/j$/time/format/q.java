package j$.time.format;

import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.util.A;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final class q {
    private static final b f = new j$.time.temporal.n() { // from class: j$.time.format.b
        @Override // j$.time.temporal.n
        public final Object a(j$.time.temporal.k kVar) {
            ZoneId zoneId = (ZoneId) kVar.i(j$.time.temporal.j.j());
            if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                return null;
            }
            return zoneId;
        }
    };
    private q a;
    private final q b;
    private final ArrayList c;
    private final boolean d;
    private int e;

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.time.format.b] */
    static {
        HashMap map = new HashMap();
        map.put('G', j$.time.temporal.a.ERA);
        map.put('y', j$.time.temporal.a.YEAR_OF_ERA);
        map.put('u', j$.time.temporal.a.YEAR);
        j$.time.temporal.l lVar = j$.time.temporal.i.a;
        map.put('Q', lVar);
        map.put('q', lVar);
        j$.time.temporal.a aVar = j$.time.temporal.a.MONTH_OF_YEAR;
        map.put('M', aVar);
        map.put('L', aVar);
        map.put('D', j$.time.temporal.a.DAY_OF_YEAR);
        map.put('d', j$.time.temporal.a.DAY_OF_MONTH);
        map.put('F', j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        j$.time.temporal.a aVar2 = j$.time.temporal.a.DAY_OF_WEEK;
        map.put('E', aVar2);
        map.put('c', aVar2);
        map.put('e', aVar2);
        map.put('a', j$.time.temporal.a.AMPM_OF_DAY);
        map.put('H', j$.time.temporal.a.HOUR_OF_DAY);
        map.put('k', j$.time.temporal.a.CLOCK_HOUR_OF_DAY);
        map.put('K', j$.time.temporal.a.HOUR_OF_AMPM);
        map.put('h', j$.time.temporal.a.CLOCK_HOUR_OF_AMPM);
        map.put('m', j$.time.temporal.a.MINUTE_OF_HOUR);
        map.put('s', j$.time.temporal.a.SECOND_OF_MINUTE);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.NANO_OF_SECOND;
        map.put('S', aVar3);
        map.put('A', j$.time.temporal.a.MILLI_OF_DAY);
        map.put('n', aVar3);
        map.put('N', j$.time.temporal.a.NANO_OF_DAY);
    }

    public q() {
        this.a = this;
        this.c = new ArrayList();
        this.e = -1;
        this.b = null;
        this.d = false;
    }

    private q(q qVar) {
        this.a = this;
        this.c = new ArrayList();
        this.e = -1;
        this.b = qVar;
        this.d = true;
    }

    private int d(g gVar) {
        A.z(gVar, "pp");
        q qVar = this.a;
        qVar.getClass();
        qVar.c.add(gVar);
        this.a.e = -1;
        return r2.c.size() - 1;
    }

    private void k(j jVar) {
        j jVarB;
        q qVar = this.a;
        int i = qVar.e;
        if (i < 0) {
            qVar.e = d(jVar);
            return;
        }
        j jVar2 = (j) qVar.c.get(i);
        int i2 = jVar.b;
        int i3 = jVar.c;
        if (i2 == i3 && jVar.d == y.NOT_NEGATIVE) {
            jVarB = jVar2.c(i3);
            d(jVar.b());
            this.a.e = i;
        } else {
            jVarB = jVar2.b();
            this.a.e = d(jVar);
        }
        this.a.c.set(i, jVarB);
    }

    private a w(Locale locale, x xVar, j$.time.chrono.f fVar) {
        A.z(locale, "locale");
        while (this.a.b != null) {
            p();
        }
        f fVar2 = new f(this.c, false);
        w wVar = w.a;
        return new a(fVar2, locale, xVar, fVar);
    }

    public final void a(a aVar) {
        d(aVar.f());
    }

    public final void b(j$.time.temporal.a aVar) {
        d(new h(aVar));
    }

    public final void c() {
        d(new i());
    }

    public final void e(char c) {
        d(new e(c));
    }

    public final void f(String str) {
        if (str.length() > 0) {
            d(str.length() == 1 ? new e(str.charAt(0)) : new m(str));
        }
    }

    public final void g(String str, String str2) {
        d(new k(str, str2));
    }

    public final void h() {
        d(k.d);
    }

    public final void i(j$.time.temporal.a aVar, TextStyle textStyle) {
        A.z(aVar, "field");
        A.z(textStyle, "textStyle");
        d(new n(aVar, textStyle, new v()));
    }

    public final void j(j$.time.temporal.a aVar, HashMap map) {
        A.z(aVar, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        TextStyle textStyle = TextStyle.FULL;
        d(new n(aVar, textStyle, new c(new u(Collections.singletonMap(textStyle, linkedHashMap)))));
    }

    public final void l(j$.time.temporal.l lVar, int i) {
        A.z(lVar, "field");
        if (i >= 1 && i <= 19) {
            k(new j(lVar, i, i, y.NOT_NEGATIVE));
        } else {
            throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
        }
    }

    public final void m(j$.time.temporal.l lVar, int i, int i2, y yVar) {
        if (i == i2 && yVar == y.NOT_NEGATIVE) {
            l(lVar, i2);
            return;
        }
        A.z(lVar, "field");
        A.z(yVar, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        }
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        }
        if (i2 >= i) {
            k(new j(lVar, i, i2, yVar));
            return;
        }
        throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
    }

    public final void n() {
        d(new o(f, "ZoneRegionId()"));
    }

    public final void o(TextStyle textStyle) {
        d(new p(textStyle));
    }

    public final void p() {
        q qVar = this.a;
        if (qVar.b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (qVar.c.size() <= 0) {
            this.a = this.a.b;
            return;
        }
        q qVar2 = this.a;
        f fVar = new f(qVar2.c, qVar2.d);
        this.a = this.a.b;
        d(fVar);
    }

    public final void q() {
        q qVar = this.a;
        qVar.e = -1;
        this.a = new q(qVar);
    }

    public final void r() {
        d(l.INSENSITIVE);
    }

    public final void s() {
        d(l.SENSITIVE);
    }

    public final void t() {
        d(l.LENIENT);
    }

    final a u(x xVar, j$.time.chrono.f fVar) {
        return w(Locale.getDefault(), xVar, fVar);
    }

    public final a v(Locale locale) {
        return w(locale, x.SMART, null);
    }
}
