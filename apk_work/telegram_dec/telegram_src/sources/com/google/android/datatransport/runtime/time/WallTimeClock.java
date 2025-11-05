package com.google.android.datatransport.runtime.time;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class WallTimeClock implements Clock {
    @Override // com.google.android.datatransport.runtime.time.Clock
    public long getTime() {
        return System.currentTimeMillis();
    }
}
