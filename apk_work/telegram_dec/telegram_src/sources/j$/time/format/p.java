package j$.time.format;

import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.util.A;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class p extends o {
    private static final ConcurrentHashMap d = new ConcurrentHashMap();
    private final TextStyle c;

    p(TextStyle textStyle) {
        super(j$.time.temporal.j.i(), "ZoneText(" + textStyle + ")");
        new HashMap();
        new HashMap();
        A.z(textStyle, "textStyle");
        this.c = textStyle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j$.time.format.o, j$.time.format.g
    public final boolean f(s sVar, StringBuilder sb) {
        String[] strArr;
        ZoneId zoneId = (ZoneId) sVar.f(j$.time.temporal.j.j());
        if (zoneId == null) {
            return false;
        }
        String id = zoneId.getId();
        if (!(zoneId instanceof ZoneOffset)) {
            j$.time.temporal.k kVarD = sVar.d();
            char c = kVarD.k(j$.time.temporal.a.INSTANT_SECONDS) ? zoneId.getRules().g(Instant.o(kVarD)) ? (char) 1 : (char) 0 : (char) 2;
            Locale localeC = sVar.c();
            TextStyle textStyle = TextStyle.NARROW;
            String str = null;
            Map concurrentHashMap = null;
            TextStyle textStyle2 = this.c;
            if (textStyle2 != textStyle) {
                ConcurrentHashMap concurrentHashMap2 = d;
                SoftReference softReference = (SoftReference) concurrentHashMap2.get(id);
                if (softReference == null || (concurrentHashMap = (Map) softReference.get()) == null || (strArr = (String[]) concurrentHashMap.get(localeC)) == null) {
                    TimeZone timeZone = TimeZone.getTimeZone(id);
                    String[] strArr2 = {id, timeZone.getDisplayName(false, 1, localeC), timeZone.getDisplayName(false, 0, localeC), timeZone.getDisplayName(true, 1, localeC), timeZone.getDisplayName(true, 0, localeC), id, id};
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    concurrentHashMap.put(localeC, strArr2);
                    concurrentHashMap2.put(id, new SoftReference(concurrentHashMap));
                    strArr = strArr2;
                }
                int iF = textStyle2.f();
                str = c != 0 ? c != 1 ? strArr[iF + 5] : strArr[iF + 3] : strArr[iF + 1];
            }
            if (str != null) {
                id = str;
            }
        }
        sb.append(id);
        return true;
    }
}
