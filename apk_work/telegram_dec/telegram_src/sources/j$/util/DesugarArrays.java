package j$.util;

import j$.util.stream.AbstractC0203u0;
import j$.util.stream.Stream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public class DesugarArrays {
    public static <T> Stream<T> stream(T[] tArr) {
        return AbstractC0203u0.e0(Spliterators.m(tArr, 0, tArr.length), false);
    }
}
