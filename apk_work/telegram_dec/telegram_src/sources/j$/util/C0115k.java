package j$.util;

import java.util.NoSuchElementException;

/* renamed from: j$.util.k, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final class C0115k {
    private static final C0115k c = new C0115k();
    private final boolean a;
    private final int b;

    private C0115k() {
        this.a = false;
        this.b = 0;
    }

    private C0115k(int i) {
        this.a = true;
        this.b = i;
    }

    public static C0115k a() {
        return c;
    }

    public static C0115k d(int i) {
        return new C0115k(i);
    }

    public final int b() {
        if (this.a) {
            return this.b;
        }
        throw new NoSuchElementException("No value present");
    }

    public final boolean c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0115k)) {
            return false;
        }
        C0115k c0115k = (C0115k) obj;
        boolean z = this.a;
        if (z && c0115k.a) {
            if (this.b == c0115k.b) {
                return true;
            }
        } else if (z == c0115k.a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (this.a) {
            return this.b;
        }
        return 0;
    }

    public final String toString() {
        if (!this.a) {
            return "OptionalInt.empty";
        }
        return "OptionalInt[" + this.b + "]";
    }
}
