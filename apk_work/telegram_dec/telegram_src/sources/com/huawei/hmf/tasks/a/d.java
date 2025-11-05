package com.huawei.hmf.tasks.a;

import com.huawei.hmf.tasks.ExecuteResult;
import com.huawei.hmf.tasks.OnCompleteListener;
import com.huawei.hmf.tasks.Task;
import java.util.concurrent.Executor;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class d implements ExecuteResult {
    Executor a;
    private OnCompleteListener b;
    private final Object c = new Object();

    d(Executor executor, OnCompleteListener onCompleteListener) {
        this.b = onCompleteListener;
        this.a = executor;
    }

    @Override // com.huawei.hmf.tasks.ExecuteResult
    public final void onComplete(final Task task) {
        this.a.execute(new Runnable() { // from class: com.huawei.hmf.tasks.a.d.1
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (d.this.c) {
                    try {
                        if (d.this.b != null) {
                            d.this.b.onComplete(task);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }
}
