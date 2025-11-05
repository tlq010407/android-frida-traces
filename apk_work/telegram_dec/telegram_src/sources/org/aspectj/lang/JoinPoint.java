package org.aspectj.lang;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface JoinPoint {

    public interface StaticPart {
        String toString();
    }

    Object getTarget();
}
