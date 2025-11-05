package j$.util;

import java.util.NoSuchElementException;

/* renamed from: j$.util.l, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final class C0116l {
    private static final C0116l c = new C0116l();
    private final boolean a;
    private final long b;

    private C0116l() {
        this.a = false;
        this.b = 0L;
    }

    private C0116l(long j) {
        this.a = true;
        this.b = j;
    }

    public static C0116l a() {
        return c;
    }

    public static C0116l d(long j) {
        return new C0116l(j);
    }

    public final long b() {
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
        if (!(obj instanceof C0116l)) {
            return false;
        }
        C0116l c0116l = (C0116l) obj;
        boolean z = this.a;
        if (z && c0116l.a) {
            if (this.b == c0116l.b) {
                return true;
            }
        } else if (z == c0116l.a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (!this.a) {
            return 0;
        }
        long j = this.b;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        if (!this.a) {
            return "OptionalLong.empty";
        }
        return "OptionalLong[" + this.b + "]";
    }
}
