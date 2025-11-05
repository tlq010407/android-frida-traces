package com.google.android.gms.cloudmessaging;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final /* synthetic */ class zzt implements Continuation {
    static final Continuation zza = new zzt();

    private zzt() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        return Rpc.zza(task);
    }
}
