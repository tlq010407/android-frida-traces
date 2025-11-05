package j$.time.format;

import j$.time.ZoneId;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
class o implements g {
    private final j$.time.temporal.n a;
    private final String b;

    o(j$.time.temporal.n nVar, String str) {
        this.a = nVar;
        this.b = str;
    }

    @Override // j$.time.format.g
    public boolean f(s sVar, StringBuilder sb) {
        ZoneId zoneId = (ZoneId) sVar.f(this.a);
        if (zoneId == null) {
            return false;
        }
        sb.append(zoneId.getId());
        return true;
    }

    public final String toString() {
        return this.b;
    }
}
