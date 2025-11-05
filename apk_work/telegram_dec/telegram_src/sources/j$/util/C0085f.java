package j$.util;

import j$.util.function.InterfaceC0098m;

/* renamed from: j$.util.f, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final class C0085f implements InterfaceC0098m {
    private double a;
    private double b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    private void c(double d) {
        double d2 = d - this.a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.a = (d4 - d3) - d2;
        this.sum = d4;
    }

    public final void a(C0085f c0085f) {
        this.count += c0085f.count;
        this.b += c0085f.b;
        c(c0085f.sum);
        c(c0085f.a);
        this.min = Math.min(this.min, c0085f.min);
        this.max = Math.max(this.max, c0085f.max);
    }

    @Override // j$.util.function.InterfaceC0098m
    public final void accept(double d) {
        this.count++;
        this.b += d;
        c(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    @Override // j$.util.function.InterfaceC0098m
    public final /* synthetic */ InterfaceC0098m k(InterfaceC0098m interfaceC0098m) {
        return j$.com.android.tools.r8.a.b(this, interfaceC0098m);
    }

    public final String toString() {
        double d;
        String simpleName = C0085f.class.getSimpleName();
        Long lValueOf = Long.valueOf(this.count);
        double d2 = this.sum + this.a;
        if (Double.isNaN(d2) && Double.isInfinite(this.b)) {
            d2 = this.b;
        }
        Double dValueOf = Double.valueOf(d2);
        Double dValueOf2 = Double.valueOf(this.min);
        if (this.count > 0) {
            double d3 = this.sum + this.a;
            if (Double.isNaN(d3) && Double.isInfinite(this.b)) {
                d3 = this.b;
            }
            double d4 = this.count;
            Double.isNaN(d4);
            d = d3 / d4;
        } else {
            d = 0.0d;
        }
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", simpleName, lValueOf, dValueOf, dValueOf2, Double.valueOf(d), Double.valueOf(this.max));
    }
}
