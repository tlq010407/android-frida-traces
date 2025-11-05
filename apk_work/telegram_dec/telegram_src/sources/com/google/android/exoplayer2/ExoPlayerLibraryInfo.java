package com.google.android.exoplayer2;

import java.util.HashSet;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class ExoPlayerLibraryInfo {
    private static final HashSet registeredModules = new HashSet();
    private static String registeredModulesString = "goog.exo.core";

    public static synchronized void registerModule(String str) {
        if (registeredModules.add(str)) {
            registeredModulesString += ", " + str;
        }
    }

    public static synchronized String registeredModules() {
        return registeredModulesString;
    }
}
