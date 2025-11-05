package com.google.common.collect;

import java.util.Iterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class UnmodifiableIterator implements Iterator {
    protected UnmodifiableIterator() {
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
