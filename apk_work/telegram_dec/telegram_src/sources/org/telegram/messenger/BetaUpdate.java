package org.telegram.messenger;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class BetaUpdate {
    public final String changelog;
    public final String version;
    public final int versionCode;

    public BetaUpdate(String str, int i, String str2) {
        this.version = str;
        this.versionCode = i;
        this.changelog = str2;
    }

    public boolean higherThan(BetaUpdate betaUpdate) {
        return betaUpdate == null || (SharedConfig.versionBiggerOrEqual(this.version, betaUpdate.version) && this.versionCode > betaUpdate.versionCode);
    }
}
