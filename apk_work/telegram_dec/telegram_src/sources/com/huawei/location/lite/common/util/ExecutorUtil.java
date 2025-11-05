package com.huawei.location.lite.common.util;

import com.huawei.location.lite.common.log.LogConsole;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ExecutorUtil {
    private final ThreadPoolExecutor executor;
    private final ScheduledExecutorService scheduledExecutor;

    private static class ExecutorsHolder {
        private static final ExecutorUtil INSTANCE = new ExecutorUtil();
    }

    private static class NamedThreadFactory implements ThreadFactory {
        private final AtomicInteger counter = new AtomicInteger(1);
        private final String poolName;

        NamedThreadFactory(String str) {
            this.poolName = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, this.poolName + "-" + this.counter.getAndIncrement());
        }
    }

    private ExecutorUtil() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 10, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("Location-Task"));
        this.executor = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.scheduledExecutor = new ScheduledThreadPoolExecutor(5, new NamedThreadFactory("Loc-Task-Delay"));
    }

    public static ExecutorUtil getInstance() {
        return ExecutorsHolder.INSTANCE;
    }

    public void execute(Runnable runnable) {
        try {
            getExecutor().execute(runnable);
        } catch (Throwable unused) {
            LogConsole.e("ExecutorUtil", "ExecutorUtil fatal error", true);
        }
    }

    public ExecutorService getExecutor() {
        return this.executor;
    }
}
