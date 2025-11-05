package com.huawei.hmf.tasks.a;

import com.huawei.hmf.tasks.ExecuteResult;
import com.huawei.hmf.tasks.OnCompleteListener;
import com.huawei.hmf.tasks.OnFailureListener;
import com.huawei.hmf.tasks.OnSuccessListener;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskExecutors;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class i extends Task {
    private boolean b;
    private volatile boolean c;
    private Object d;
    private Exception e;
    private final Object a = new Object();
    private List f = new ArrayList();

    private Task a(ExecuteResult executeResult) {
        boolean zIsComplete;
        synchronized (this.a) {
            try {
                zIsComplete = isComplete();
                if (!zIsComplete) {
                    this.f.add(executeResult);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zIsComplete) {
            executeResult.onComplete(this);
        }
        return this;
    }

    private void b() {
        synchronized (this.a) {
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                try {
                    ((ExecuteResult) it.next()).onComplete(this);
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
            this.f = null;
        }
    }

    public final void a(Exception exc) {
        synchronized (this.a) {
            try {
                if (this.b) {
                    return;
                }
                this.b = true;
                this.e = exc;
                this.a.notifyAll();
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Object obj) {
        synchronized (this.a) {
            try {
                if (this.b) {
                    return;
                }
                this.b = true;
                this.d = obj;
                this.a.notifyAll();
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean a() {
        synchronized (this.a) {
            try {
                if (this.b) {
                    return false;
                }
                this.b = true;
                this.c = true;
                this.a.notifyAll();
                b();
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.huawei.hmf.tasks.Task
    public final Task addOnCompleteListener(OnCompleteListener onCompleteListener) {
        return addOnCompleteListener(TaskExecutors.uiThread(), onCompleteListener);
    }

    public final Task addOnCompleteListener(Executor executor, OnCompleteListener onCompleteListener) {
        return a((ExecuteResult) new d(executor, onCompleteListener));
    }

    @Override // com.huawei.hmf.tasks.Task
    public final Task addOnFailureListener(OnFailureListener onFailureListener) {
        return addOnFailureListener(TaskExecutors.uiThread(), onFailureListener);
    }

    public final Task addOnFailureListener(Executor executor, OnFailureListener onFailureListener) {
        return a((ExecuteResult) new f(executor, onFailureListener));
    }

    @Override // com.huawei.hmf.tasks.Task
    public final Task addOnSuccessListener(OnSuccessListener onSuccessListener) {
        return addOnSuccessListener(TaskExecutors.uiThread(), onSuccessListener);
    }

    public final Task addOnSuccessListener(Executor executor, OnSuccessListener onSuccessListener) {
        return a((ExecuteResult) new h(executor, onSuccessListener));
    }

    @Override // com.huawei.hmf.tasks.Task
    public final Exception getException() {
        Exception exc;
        synchronized (this.a) {
            exc = this.e;
        }
        return exc;
    }

    @Override // com.huawei.hmf.tasks.Task
    public final Object getResult() {
        Object obj;
        synchronized (this.a) {
            try {
                if (this.e != null) {
                    throw new RuntimeException(this.e);
                }
                obj = this.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // com.huawei.hmf.tasks.Task
    public final Object getResultThrowException(Class cls) {
        Object obj;
        synchronized (this.a) {
            if (cls != null) {
                try {
                    if (cls.isInstance(this.e)) {
                        throw ((Throwable) cls.cast(this.e));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.e != null) {
                throw new RuntimeException(this.e);
            }
            obj = this.d;
        }
        return obj;
    }

    @Override // com.huawei.hmf.tasks.Task
    public final boolean isCanceled() {
        return this.c;
    }

    @Override // com.huawei.hmf.tasks.Task
    public final boolean isComplete() {
        boolean z;
        synchronized (this.a) {
            z = this.b;
        }
        return z;
    }

    @Override // com.huawei.hmf.tasks.Task
    public final boolean isSuccessful() {
        boolean z;
        synchronized (this.a) {
            try {
                z = this.b && !isCanceled() && this.e == null;
            } finally {
            }
        }
        return z;
    }
}
