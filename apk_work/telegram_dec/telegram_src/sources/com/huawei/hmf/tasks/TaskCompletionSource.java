package com.huawei.hmf.tasks;

import com.huawei.hmf.tasks.a.i;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class TaskCompletionSource {
    private final i task = new i();

    public TaskCompletionSource() {
    }

    public TaskCompletionSource(CancellationToken cancellationToken) {
        cancellationToken.register(new Runnable() { // from class: com.huawei.hmf.tasks.TaskCompletionSource.1
            @Override // java.lang.Runnable
            public void run() {
                TaskCompletionSource.this.task.a();
            }
        });
    }

    public Task getTask() {
        return this.task;
    }

    public void setException(Exception exc) {
        this.task.a(exc);
    }

    public void setResult(Object obj) {
        this.task.a(obj);
    }
}
