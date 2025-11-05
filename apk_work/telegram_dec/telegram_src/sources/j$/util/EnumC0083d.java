package j$.util;

import j$.util.function.Function;
import j$.util.function.r0;
import j$.util.function.t0;
import j$.util.function.v0;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: j$.util.d, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class EnumC0083d implements Comparator, InterfaceC0082c {
    public static final EnumC0083d INSTANCE;
    private static final /* synthetic */ EnumC0083d[] a;

    static {
        EnumC0083d enumC0083d = new EnumC0083d();
        INSTANCE = enumC0083d;
        a = new EnumC0083d[]{enumC0083d};
    }

    private EnumC0083d() {
    }

    public static EnumC0083d valueOf(String str) {
        return (EnumC0083d) Enum.valueOf(EnumC0083d.class, str);
    }

    public static EnumC0083d[] values() {
        return (EnumC0083d[]) a.clone();
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((Comparable) obj).compareTo((Comparable) obj2);
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        return Comparator$CC.reverseOrder();
    }

    @Override // java.util.Comparator
    public final Comparator thenComparing(Comparator comparator) {
        comparator.getClass();
        return new C0081b(this, comparator, 0);
    }

    @Override // java.util.Comparator
    public final Comparator thenComparing(Function function) {
        return Comparator$EL.a(this, Comparator$CC.comparing(Function.VivifiedWrapper.convert(function)));
    }

    @Override // java.util.Comparator
    public final Comparator thenComparing(java.util.function.Function function, Comparator comparator) {
        j$.util.function.Function functionConvert = Function.VivifiedWrapper.convert(function);
        functionConvert.getClass();
        comparator.getClass();
        return Comparator$EL.a(this, new C0081b(comparator, functionConvert, 1));
    }

    @Override // java.util.Comparator
    public final Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        return Comparator$EL.a(this, Comparator$CC.comparingDouble(r0.a(toDoubleFunction)));
    }

    @Override // java.util.Comparator
    public final Comparator thenComparingInt(ToIntFunction toIntFunction) {
        return Comparator$EL.a(this, Comparator$CC.comparingInt(t0.a(toIntFunction)));
    }

    @Override // java.util.Comparator
    public final Comparator thenComparingLong(ToLongFunction toLongFunction) {
        return Comparator$EL.a(this, Comparator$CC.comparingLong(v0.a(toLongFunction)));
    }
}
