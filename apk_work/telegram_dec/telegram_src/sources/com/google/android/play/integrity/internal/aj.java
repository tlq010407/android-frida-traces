package com.google.android.play.integrity.internal;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class aj implements an {
    private static final Object a = new Object();
    private volatile an b;
    private volatile Object c = a;

    private aj(an anVar) {
        this.b = anVar;
    }

    public static an b(an anVar) {
        return anVar instanceof aj ? anVar : new aj(anVar);
    }

    @Override // com.google.android.play.integrity.internal.an
    public final Object a() {
        Object objA = this.c;
        Object obj = a;
        if (objA == obj) {
            synchronized (this) {
                try {
                    objA = this.c;
                    if (objA == obj) {
                        objA = this.b.a();
                        Object obj2 = this.c;
                        if (obj2 != obj && obj2 != objA) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj2 + " & " + objA + ". This is likely due to a circular dependency.");
                        }
                        this.c = objA;
                        this.b = null;
                    }
                } finally {
                }
            }
        }
        return objA;
    }
}
