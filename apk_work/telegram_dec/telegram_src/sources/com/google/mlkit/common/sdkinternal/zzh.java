package com.google.mlkit.common.sdkinternal;

import java.util.concurrent.Executor;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
enum zzh implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        MLTaskExecutor.getInstance().zzc.post(runnable);
    }
}
