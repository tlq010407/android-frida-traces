package io.reactivex.rxjava3.internal.functions;

import io.reactivex.rxjava3.functions.BiPredicate;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class ObjectHelper {
    static final BiPredicate EQUALS = new BiObjectPredicate();

    static final class BiObjectPredicate implements BiPredicate {
        BiObjectPredicate() {
        }
    }

    public static int verifyPositive(int i, String str) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i);
    }
}
