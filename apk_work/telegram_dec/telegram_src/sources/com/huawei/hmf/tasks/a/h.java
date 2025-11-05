package com.huawei.hmf.tasks.a;

import com.huawei.hmf.tasks.ExecuteResult;
import com.huawei.hmf.tasks.OnSuccessListener;
import com.huawei.hmf.tasks.Task;
import java.util.concurrent.Executor;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class h implements ExecuteResult {
    private OnSuccessListener a;
    private Executor b;
    private final Object c = new Object();

    h(Executor executor, OnSuccessListener onSuccessListener) {
        this.a = onSuccessListener;
        this.b = executor;
    }

    @Override // com.huawei.hmf.tasks.ExecuteResult
    public final void onComplete(final Task task) {
        if (!task.isSuccessful() || task.isCanceled()) {
            return;
        }
        this.b.execute(new Runnable() { // from class: com.huawei.hmf.tasks.a.h.1
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (h.this.c) {
                    try {
                        if (h.this.a != null) {
                            h.this.a.onSuccess(task.getResult());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }
}
