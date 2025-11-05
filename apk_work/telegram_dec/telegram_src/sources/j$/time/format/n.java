package j$.time.format;

import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class n implements g {
    private final j$.time.temporal.l a;
    private final TextStyle b;
    private final v c;
    private volatile j d;

    n(j$.time.temporal.a aVar, TextStyle textStyle, v vVar) {
        this.a = aVar;
        this.b = textStyle;
        this.c = vVar;
    }

    @Override // j$.time.format.g
    public final boolean f(s sVar, StringBuilder sb) {
        String strC;
        j$.time.chrono.f fVar;
        Long lE = sVar.e(this.a);
        if (lE == null) {
            return false;
        }
        j$.time.chrono.e eVar = (j$.time.chrono.e) sVar.d().i(j$.time.temporal.j.d());
        if (eVar == null || eVar == (fVar = j$.time.chrono.f.a)) {
            strC = this.c.c(this.a, lE.longValue(), this.b, sVar.c());
        } else {
            v vVar = this.c;
            j$.time.temporal.l lVar = this.a;
            long jLongValue = lE.longValue();
            TextStyle textStyle = this.b;
            Locale localeC = sVar.c();
            vVar.getClass();
            strC = (eVar == fVar || !(lVar instanceof j$.time.temporal.a)) ? vVar.c(lVar, jLongValue, textStyle, localeC) : null;
        }
        if (strC != null) {
            sb.append(strC);
            return true;
        }
        if (this.d == null) {
            this.d = new j(this.a, 1, 19, y.NORMAL);
        }
        return this.d.f(sVar, sb);
    }

    public final String toString() {
        StringBuilder sb;
        TextStyle textStyle = TextStyle.FULL;
        j$.time.temporal.l lVar = this.a;
        TextStyle textStyle2 = this.b;
        if (textStyle2 == textStyle) {
            sb = new StringBuilder("Text(");
            sb.append(lVar);
        } else {
            sb = new StringBuilder("Text(");
            sb.append(lVar);
            sb.append(",");
            sb.append(textStyle2);
        }
        sb.append(")");
        return sb.toString();
    }
}
