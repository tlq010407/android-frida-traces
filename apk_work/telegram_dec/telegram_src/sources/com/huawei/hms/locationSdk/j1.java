package com.huawei.hms.locationSdk;

import android.content.Context;
import com.huawei.hmf.tasks.CancellationToken;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.Api.ApiOptions;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.location.router.RouterTaskHandler;
import com.huawei.location.router.entity.RouterRequest;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class j1<TResult, TClient extends AnyClient, TOption extends Api.ApiOptions> implements InvocationHandler {
    private static final Object[] d = new Object[0];
    private final Object a;
    private final WeakReference<Context> b;
    private RouterTaskHandler c;

    class a extends CancellationToken {
        a(j1 j1Var) {
        }

        @Override // com.huawei.hmf.tasks.CancellationToken
        public boolean isCancellationRequested() {
            return false;
        }

        @Override // com.huawei.hmf.tasks.CancellationToken
        public CancellationToken register(Runnable runnable) {
            return null;
        }
    }

    private j1(Context context, Object obj) {
        this.a = obj;
        this.b = new WeakReference<>(context);
    }

    private Task a(Object[] objArr) {
        ApiException apiException;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        if (objArr == null || objArr.length == 0) {
            apiException = new ApiException(Status.FAILURE);
        } else {
            if (this.c == null) {
                RouterTaskHandler routerTaskHandler = RouterTaskHandler.getInstance();
                this.c = routerTaskHandler;
                routerTaskHandler.initTaskCall(this.b.get(), 0);
            }
            i0<TClient, TResult> i0VarA = null;
            AbstractClientBuilder abstractClientBuilder = null;
            for (Object obj : objArr) {
                if (obj instanceof i0) {
                    i0VarA = a((i0) obj);
                }
                if (obj instanceof AbstractClientBuilder) {
                    abstractClientBuilder = (AbstractClientBuilder) obj;
                }
            }
            if (i0VarA != null && abstractClientBuilder != null) {
                synchronized (d) {
                    this.c.enqueue(new RouterRequest(i0VarA.getUri(), i0VarA.getRequestJson(), i0VarA.getTransactionId(), new h1(i0VarA, taskCompletionSource, abstractClientBuilder), i0VarA.getParcelable()));
                    HMSLog.i("LiteSDKApiProxyHandler", "handlerLiteTask success");
                }
                return taskCompletionSource.getTask();
            }
            apiException = new ApiException(Status.FAILURE);
        }
        taskCompletionSource.setException(apiException);
        return taskCompletionSource.getTask();
    }

    private i0<TClient, TResult> a(i0<TClient, TResult> i0Var) {
        i0Var.setToken(new a(this));
        return i0Var;
    }

    public static Object a(Context context, Object obj) {
        return Proxy.newProxyInstance(obj.getClass().getClassLoader(), obj.getClass().getInterfaces(), new j1(context, obj));
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws IllegalAccessException, InvocationTargetException {
        if (!method.isAnnotationPresent(i1.class)) {
            return method.invoke(this.a, objArr);
        }
        HMSLog.i("LiteSDKApiProxyHandler", "not find HMS Core ,try use lite");
        return a(objArr);
    }
}
