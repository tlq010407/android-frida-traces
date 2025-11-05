package j$.util;

import j$.util.function.ToIntFunction;
import java.util.Collections;
import java.util.Comparator;

/* renamed from: j$.util.Comparator$-EL, reason: invalid class name */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public final /* synthetic */ class Comparator$EL {
    public static C0081b a(Comparator comparator, Comparator comparator2) {
        if (!(comparator instanceof InterfaceC0082c)) {
            comparator2.getClass();
            return new C0081b(comparator, comparator2, 0);
        }
        EnumC0083d enumC0083d = (EnumC0083d) ((InterfaceC0082c) comparator);
        enumC0083d.getClass();
        comparator2.getClass();
        return new C0081b(enumC0083d, comparator2, 0);
    }

    public static Comparator reversed(Comparator comparator) {
        if (!(comparator instanceof InterfaceC0082c)) {
            return Collections.reverseOrder(comparator);
        }
        ((EnumC0083d) ((InterfaceC0082c) comparator)).getClass();
        return Comparator$CC.reverseOrder();
    }

    public static Comparator thenComparingInt(Comparator comparator, ToIntFunction toIntFunction) {
        if (!(comparator instanceof InterfaceC0082c)) {
            return a(comparator, Comparator$CC.comparingInt(toIntFunction));
        }
        EnumC0083d enumC0083d = (EnumC0083d) ((InterfaceC0082c) comparator);
        enumC0083d.getClass();
        return a(enumC0083d, Comparator$CC.comparingInt(toIntFunction));
    }
}
