package com.huawei.secure.android.common.ssl.hostname;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.security.auth.x500.X500Principal;
import org.telegram.messenger.R;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class a {
    private final String a;
    private final int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private char[] g;

    public a(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.a = name;
        this.b = name.length();
    }

    private int a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.b) {
            throw new IllegalStateException("Malformed DN: " + this.a);
        }
        char[] cArr = this.g;
        char c = cArr[i];
        if (c >= '0' && c <= '9') {
            i2 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i2 = c - 'W';
        } else {
            if (c < 'A' || c > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.a);
            }
            i2 = c - '7';
        }
        char c2 = cArr[i4];
        if (c2 >= '0' && c2 <= '9') {
            i3 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i3 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.a);
            }
            i3 = c2 - '7';
        }
        return (i2 << 4) + i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004d, code lost:
    
        r2 = r8.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
    
        return new java.lang.String(r1, r2, r8.e - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String a() {
        int i;
        int i2;
        char c;
        int i3 = this.c;
        this.d = i3;
        this.e = i3;
        while (true) {
            int i4 = this.c;
            if (i4 >= this.b) {
                char[] cArr = this.g;
                int i5 = this.d;
                return new String(cArr, i5, this.e - i5);
            }
            char[] cArr2 = this.g;
            char c2 = cArr2[i4];
            if (c2 == ' ') {
                int i6 = this.e;
                this.f = i6;
                this.c = i4 + 1;
                this.e = i6 + 1;
                cArr2[i6] = ' ';
                while (true) {
                    i = this.c;
                    i2 = this.b;
                    if (i >= i2) {
                        break;
                    }
                    char[] cArr3 = this.g;
                    if (cArr3[i] != ' ') {
                        break;
                    }
                    int i7 = this.e;
                    this.e = i7 + 1;
                    cArr3[i7] = ' ';
                    this.c = i + 1;
                }
                if (i == i2 || (c = this.g[i]) == ',' || c == '+' || c == ';') {
                    break;
                }
            } else {
                if (c2 == ';') {
                    break;
                }
                if (c2 == '\\') {
                    int i8 = this.e;
                    this.e = i8 + 1;
                    cArr2[i8] = b();
                    i4 = this.c;
                } else {
                    if (c2 == '+' || c2 == ',') {
                        break;
                    }
                    int i9 = this.e;
                    this.e = i9 + 1;
                    cArr2[i9] = c2;
                }
                this.c = i4 + 1;
            }
        }
        char[] cArr4 = this.g;
        int i10 = this.d;
        return new String(cArr4, i10, this.f - i10);
    }

    private char b() {
        int i = this.c + 1;
        this.c = i;
        if (i == this.b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.a);
        }
        char c = this.g[i];
        if (c == ' ' || c == '%' || c == '\\' || c == '_' || c == '\"' || c == '#') {
            return c;
        }
        switch (c) {
            case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
            case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
            case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                return c;
            default:
                switch (c) {
                    case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                        return c;
                    default:
                        return c();
                }
        }
    }

    private char c() {
        int i;
        int i2;
        int iA = a(this.c);
        this.c++;
        if (iA < 128) {
            return (char) iA;
        }
        if (iA < 192 || iA > 247) {
            return '?';
        }
        if (iA <= 223) {
            i = iA & 31;
            i2 = 1;
        } else if (iA <= 239) {
            i = iA & 15;
            i2 = 2;
        } else {
            i = iA & 7;
            i2 = 3;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.c;
            int i5 = i4 + 1;
            this.c = i5;
            if (i5 == this.b || this.g[i5] != '\\') {
                return '?';
            }
            int i6 = i4 + 2;
            this.c = i6;
            int iA2 = a(i6);
            this.c++;
            if ((iA2 & 192) != 128) {
                return '?';
            }
            i = (i << 6) + (iA2 & 63);
        }
        return (char) i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x004c, code lost:
    
        r6.e = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String d() {
        char[] cArr;
        char c;
        int i = this.c;
        if (i + 4 >= this.b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.a);
        }
        this.d = i;
        while (true) {
            this.c = i + 1;
            i = this.c;
            if (i == this.b || (c = (cArr = this.g)[i]) == '+' || c == ',' || c == ';') {
                break;
            }
            if (c == ' ') {
                this.e = i;
                do {
                    this.c = i + 1;
                    i = this.c;
                    if (i >= this.b) {
                        break;
                    }
                } while (this.g[i] == ' ');
            } else if (c >= 'A' && c <= 'F') {
                cArr[i] = (char) (c + ' ');
            }
        }
        int i2 = this.e;
        int i3 = this.d;
        int i4 = i2 - i3;
        if (i4 < 5 || (i4 & 1) == 0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.a);
        }
        int i5 = i4 / 2;
        byte[] bArr = new byte[i5];
        int i6 = i3 + 1;
        for (int i7 = 0; i7 < i5; i7++) {
            bArr[i7] = (byte) a(i6);
            i6 += 2;
        }
        return new String(this.g, this.d, i4);
    }

    private String e() {
        int i;
        int i2;
        int i3;
        char c;
        char c2;
        char c3;
        int i4;
        int i5;
        char c4;
        char c5;
        while (true) {
            i = this.c;
            i2 = this.b;
            if (i >= i2 || this.g[i] != ' ') {
                break;
            }
            this.c = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.d = i;
        do {
            this.c = i + 1;
            i = this.c;
            i3 = this.b;
            if (i >= i3 || (c5 = this.g[i]) == '=') {
                break;
            }
        } while (c5 != ' ');
        if (i >= i3) {
            throw new IllegalStateException("Unexpected end of DN: " + this.a);
        }
        this.e = i;
        if (this.g[i] == ' ') {
            while (true) {
                i4 = this.c;
                i5 = this.b;
                if (i4 >= i5 || (c4 = this.g[i4]) == '=' || c4 != ' ') {
                    break;
                }
                this.c = i4 + 1;
            }
            if (this.g[i4] != '=' || i4 == i5) {
                throw new IllegalStateException("Unexpected end of DN: " + this.a);
            }
        }
        int i6 = this.c;
        do {
            this.c = i6 + 1;
            i6 = this.c;
            if (i6 >= this.b) {
                break;
            }
        } while (this.g[i6] == ' ');
        int i7 = this.e;
        int i8 = this.d;
        if (i7 - i8 > 4) {
            char[] cArr = this.g;
            if (cArr[i8 + 3] == '.' && (((c = cArr[i8]) == 'O' || c == 'o') && (((c2 = cArr[i8 + 1]) == 'I' || c2 == 'i') && ((c3 = cArr[i8 + 2]) == 'D' || c3 == 'd')))) {
                this.d = i8 + 4;
            }
        }
        char[] cArr2 = this.g;
        int i9 = this.d;
        return new String(cArr2, i9, i7 - i9);
    }

    private String f() {
        int i = this.c + 1;
        this.c = i;
        this.d = i;
        while (true) {
            this.e = i;
            int i2 = this.c;
            if (i2 == this.b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.a);
            }
            char[] cArr = this.g;
            char c = cArr[i2];
            if (c == '\"') {
                do {
                    this.c = i2 + 1;
                    i2 = this.c;
                    if (i2 >= this.b) {
                        break;
                    }
                } while (this.g[i2] == ' ');
                char[] cArr2 = this.g;
                int i3 = this.d;
                return new String(cArr2, i3, this.e - i3);
            }
            if (c == '\\') {
                cArr[this.e] = b();
            } else {
                cArr[this.e] = c;
            }
            this.c++;
            i = this.e + 1;
        }
    }

    public List b(String str) {
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = this.a.toCharArray();
        List listEmptyList = Collections.emptyList();
        String strE = e();
        if (strE == null) {
            return listEmptyList;
        }
        do {
            int i = this.c;
            if (i < this.b) {
                char c = this.g[i];
                String strA = c != '\"' ? c != '#' ? (c == '+' || c == ',' || c == ';') ? "" : a() : d() : f();
                if (str.equalsIgnoreCase(strE)) {
                    if (listEmptyList.isEmpty()) {
                        listEmptyList = new ArrayList();
                    }
                    listEmptyList.add(strA);
                }
                int i2 = this.c;
                if (i2 < this.b) {
                    char c2 = this.g[i2];
                    if (c2 != ',' && c2 != ';' && c2 != '+') {
                        throw new IllegalStateException("Malformed DN: " + this.a);
                    }
                    this.c = i2 + 1;
                    strE = e();
                }
            }
            return listEmptyList;
        } while (strE != null);
        throw new IllegalStateException("Malformed DN: " + this.a);
    }
}
