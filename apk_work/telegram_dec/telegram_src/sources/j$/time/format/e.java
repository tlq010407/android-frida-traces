package j$.time.format;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class e implements g {
    private final char a;

    e(char c) {
        this.a = c;
    }

    @Override // j$.time.format.g
    public final boolean f(s sVar, StringBuilder sb) {
        sb.append(this.a);
        return true;
    }

    public final String toString() {
        char c = this.a;
        if (c == '\'') {
            return "''";
        }
        return "'" + c + "'";
    }
}
