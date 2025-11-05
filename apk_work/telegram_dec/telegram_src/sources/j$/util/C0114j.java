package j$.util;

import java.util.NoSuchElementException;

/* renamed from: j$.util.j, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final class C0114j {
    private static final C0114j c = new C0114j();
    private final boolean a;
    private final double b;

    private C0114j() {
        this.a = false;
        this.b = Double.NaN;
    }

    private C0114j(double d) {
        this.a = true;
        this.b = d;
    }

    public static C0114j a() {
        return c;
    }

    public static C0114j d(double d) {
        return new C0114j(d);
    }

    public final double b() {
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
        if (!(obj instanceof C0114j)) {
            return false;
        }
        C0114j c0114j = (C0114j) obj;
        boolean z = this.a;
        if (z && c0114j.a) {
            if (Double.compare(this.b, c0114j.b) == 0) {
                return true;
            }
        } else if (z == c0114j.a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (!this.a) {
            return 0;
        }
        long jDoubleToLongBits = Double.doubleToLongBits(this.b);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public final String toString() {
        if (!this.a) {
            return "OptionalDouble.empty";
        }
        return "OptionalDouble[" + this.b + "]";
    }
}
