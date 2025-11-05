package j$.time.format;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class k implements g {
    static final String[] c = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};
    static final k d = new k("+HH:MM:ss", "Z");
    private final String a;
    private final int b;

    static {
        new k("+HH:MM:ss", "0");
    }

    k(String str, String str2) {
        int i = 0;
        while (true) {
            String[] strArr = c;
            if (i >= 9) {
                throw new IllegalArgumentException("Invalid zone offset pattern: ".concat(str));
            }
            if (strArr[i].equals(str)) {
                this.b = i;
                this.a = str2;
                return;
            }
            i++;
        }
    }

    @Override // j$.time.format.g
    public final boolean f(s sVar, StringBuilder sb) {
        Long lE = sVar.e(j$.time.temporal.a.OFFSET_SECONDS);
        if (lE == null) {
            return false;
        }
        long jLongValue = lE.longValue();
        int i = (int) jLongValue;
        if (jLongValue != i) {
            throw new ArithmeticException();
        }
        String str = this.a;
        if (i == 0) {
            sb.append(str);
        } else {
            int iAbs = Math.abs((i / 3600) % 100);
            int iAbs2 = Math.abs((i / 60) % 60);
            int iAbs3 = Math.abs(i % 60);
            int length = sb.length();
            sb.append(i < 0 ? "-" : "+");
            sb.append((char) ((iAbs / 10) + 48));
            sb.append((char) ((iAbs % 10) + 48));
            int i2 = this.b;
            if (i2 >= 3 || (i2 >= 1 && iAbs2 > 0)) {
                int i3 = i2 % 2;
                sb.append(i3 == 0 ? ":" : "");
                sb.append((char) ((iAbs2 / 10) + 48));
                sb.append((char) ((iAbs2 % 10) + 48));
                iAbs += iAbs2;
                if (i2 >= 7 || (i2 >= 5 && iAbs3 > 0)) {
                    sb.append(i3 == 0 ? ":" : "");
                    sb.append((char) ((iAbs3 / 10) + 48));
                    sb.append((char) ((iAbs3 % 10) + 48));
                    iAbs += iAbs3;
                }
            }
            if (iAbs == 0) {
                sb.setLength(length);
                sb.append(str);
            }
        }
        return true;
    }

    public final String toString() {
        return "Offset(" + c[this.b] + ",'" + this.a.replace("'", "''") + "')";
    }
}
