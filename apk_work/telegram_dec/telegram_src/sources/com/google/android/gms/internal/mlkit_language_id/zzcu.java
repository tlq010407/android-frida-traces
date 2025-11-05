package com.google.android.gms.internal.mlkit_language_id;

import com.google.android.gms.common.internal.LibraryVersion;
import java.util.concurrent.Callable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final /* synthetic */ class zzcu implements Callable {
    static final Callable zza = new zzcu();

    private zzcu() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return LibraryVersion.getInstance().getVersion("language-id");
    }
}
