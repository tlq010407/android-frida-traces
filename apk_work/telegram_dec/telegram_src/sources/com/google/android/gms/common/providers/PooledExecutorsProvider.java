package com.google.android.gms.common.providers;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class PooledExecutorsProvider {
    private static PooledExecutorFactory zza;

    public interface PooledExecutorFactory {
        ScheduledExecutorService newSingleThreadScheduledExecutor();
    }

    public static synchronized PooledExecutorFactory getInstance() {
        try {
            if (zza == null) {
                zza = new zza();
            }
        } catch (Throwable th) {
            throw th;
        }
        return zza;
    }
}
