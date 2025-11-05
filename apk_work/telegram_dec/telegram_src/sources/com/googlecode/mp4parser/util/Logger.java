package com.googlecode.mp4parser.util;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class Logger {
    public static Logger getLogger(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new AndroidLogger(cls.getSimpleName()) : new JuliLogger(cls.getSimpleName());
    }

    public abstract void logDebug(String str);
}
