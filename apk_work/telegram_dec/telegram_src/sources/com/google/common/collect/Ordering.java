package com.google.common.collect;

import com.google.common.base.Function;
import java.util.Comparator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class Ordering implements Comparator {
    protected Ordering() {
    }

    public static Ordering from(Comparator comparator) {
        return comparator instanceof Ordering ? (Ordering) comparator : new ComparatorOrdering(comparator);
    }

    public static Ordering natural() {
        return NaturalOrdering.INSTANCE;
    }

    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);

    public Ordering onResultOf(Function function) {
        return new ByFunctionOrdering(function, this);
    }

    public Ordering reverse() {
        return new ReverseOrdering(this);
    }
}
