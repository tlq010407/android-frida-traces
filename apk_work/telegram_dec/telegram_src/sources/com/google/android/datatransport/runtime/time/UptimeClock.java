package com.google.android.datatransport.runtime.time;

import android.os.SystemClock;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class UptimeClock implements Clock {
    @Override // com.google.android.datatransport.runtime.time.Clock
    public long getTime() {
        return SystemClock.elapsedRealtime();
    }
}
