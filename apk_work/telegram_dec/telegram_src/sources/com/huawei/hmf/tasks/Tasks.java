package com.huawei.hmf.tasks;

import com.huawei.hmf.tasks.a.j;
import java.util.concurrent.Callable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class Tasks {
    private static j IMPL = new j();

    public static Object await(Task task) throws InterruptedException {
        j.a("await must not be called on the UI thread");
        if (task.isComplete()) {
            return j.a(task);
        }
        j.a aVar = new j.a();
        task.addOnSuccessListener(aVar).addOnFailureListener(aVar);
        aVar.a.await();
        return j.a(task);
    }

    public static Task callInBackground(Callable callable) {
        return IMPL.a(TaskExecutors.background(), callable);
    }
}
