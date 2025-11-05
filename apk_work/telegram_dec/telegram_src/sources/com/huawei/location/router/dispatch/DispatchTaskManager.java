package com.huawei.location.router.dispatch;

import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.ExecutorManager;
import com.huawei.location.router.entity.IRouterResponse;
import com.huawei.location.router.entity.RouterRequest;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class DispatchTaskManager {
    private static final long KEEP_ALIVE_TIME = 60;
    public static final String LOCATION_DISPATCH_TASK_MANAGER = "Location_DispatchTaskManager";
    private static final int THREAD_CORE = Runtime.getRuntime().availableProcessors();
    private static final int THREAD_TIME_OUT_SECENODS = 3;
    private ThreadPoolExecutor mExcutorService;

    private static class Vw {
        private static final DispatchTaskManager yn = new DispatchTaskManager();
    }

    private DispatchTaskManager() {
        init();
    }

    public static DispatchTaskManager getInstance() {
        return Vw.yn;
    }

    private void init() {
        int i = THREAD_CORE;
        DispatchThreadPoolExecutor dispatchThreadPoolExecutor = new DispatchThreadPoolExecutor(i, i * 2, 60L, TimeUnit.SECONDS, new LinkedBlockingDeque(), ExecutorManager.createThreadFactory(LOCATION_DISPATCH_TASK_MANAGER));
        this.mExcutorService = dispatchThreadPoolExecutor;
        dispatchThreadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public void dispatchTask(RouterRequest routerRequest) {
        ThreadPoolExecutor threadPoolExecutor = this.mExcutorService;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(new DispatchRunnable(routerRequest));
        }
    }

    public IRouterResponse executeTask(RouterRequest routerRequest) {
        ThreadPoolExecutor threadPoolExecutor = this.mExcutorService;
        if (threadPoolExecutor == null) {
            return null;
        }
        try {
            return (IRouterResponse) threadPoolExecutor.submit(new DispatchCallable(routerRequest)).get(3L, TimeUnit.SECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException unused) {
            LogConsole.e("DispatchTaskManager", "enqueue task failed");
            return null;
        }
    }
}
