package com.google.firebase.messaging;

import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
class RequestDeduplicator {
    private final Executor executor;
    private final Map getTokenRequests = new ArrayMap();

    interface GetTokenRequest {
        Task start();
    }

    RequestDeduplicator(Executor executor) {
        this.executor = executor;
    }

    synchronized Task getOrStartGetTokenRequest(final String str, GetTokenRequest getTokenRequest) {
        try {
            Task task = (Task) this.getTokenRequests.get(str);
            if (task != null) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    String strValueOf = String.valueOf(str);
                    Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Joining ongoing request for: ".concat(strValueOf) : new String("Joining ongoing request for: "));
                }
                return task;
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String strValueOf2 = String.valueOf(str);
                Log.d("FirebaseMessaging", strValueOf2.length() != 0 ? "Making new request for: ".concat(strValueOf2) : new String("Making new request for: "));
            }
            Task taskContinueWithTask = getTokenRequest.start().continueWithTask(this.executor, new Continuation(this, str) { // from class: com.google.firebase.messaging.RequestDeduplicator$$Lambda$0
                private final RequestDeduplicator arg$1;
                private final String arg$2;

                {
                    this.arg$1 = this;
                    this.arg$2 = str;
                }

                @Override // com.google.android.gms.tasks.Continuation
                public Object then(Task task2) {
                    this.arg$1.lambda$getOrStartGetTokenRequest$0$RequestDeduplicator(this.arg$2, task2);
                    return task2;
                }
            });
            this.getTokenRequests.put(str, taskContinueWithTask);
            return taskContinueWithTask;
        } catch (Throwable th) {
            throw th;
        }
    }

    final /* synthetic */ Task lambda$getOrStartGetTokenRequest$0$RequestDeduplicator(String str, Task task) {
        synchronized (this) {
            this.getTokenRequests.remove(str);
        }
        return task;
    }
}
