package com.huawei.location.lite.common.chain;

import com.huawei.location.lite.common.chain.Result;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.ExecutorUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TaskClient {
    private TaskRequest taskRequest;
    private List tasks;

    public static final class Builder {
        private TaskRequest taskRequest;
        private List tasks = new ArrayList();

        public Builder addTask(Task task) {
            if (task == null) {
                throw new IllegalArgumentException("task == null");
            }
            if (this.tasks == null) {
                this.tasks = new ArrayList();
            }
            this.tasks.add(task);
            return this;
        }

        public TaskClient build() {
            return new TaskClient(this);
        }

        public Builder withTaskRequest(TaskRequest taskRequest) {
            this.taskRequest = taskRequest;
            return this;
        }
    }

    private TaskClient(Builder builder) {
        this.tasks = Collections.unmodifiableList(builder.tasks);
        this.taskRequest = builder.taskRequest;
    }

    private void enqueue() throws ExecutionException, InterruptedException, TimeoutException, TaskTimeOutException {
        String string;
        StringBuilder sb;
        String str;
        FutureTask futureTask = new FutureTask(new Callable() { // from class: com.huawei.location.lite.common.chain.TaskClient.2
            @Override // java.util.concurrent.Callable
            public String call() {
                new TaskChain(TaskClient.this.tasks, TaskClient.this.taskRequest).runTask(false);
                return "TaskChain";
            }
        });
        ExecutorUtil.getInstance().execute(futureTask);
        try {
            futureTask.get(this.taskRequest.getMaxTimeOut(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            e = e;
            sb = new StringBuilder();
            str = "Task InterruptedException";
            sb.append(str);
            sb.append(e.getMessage());
            string = sb.toString();
            LogConsole.e("TaskChain", string);
        } catch (ExecutionException e2) {
            e = e2;
            sb = new StringBuilder();
            str = "Task ExecutionException";
            sb.append(str);
            sb.append(e.getMessage());
            string = sb.toString();
            LogConsole.e("TaskChain", string);
        } catch (TimeoutException e3) {
            if (!futureTask.isDone()) {
                this.taskRequest.setIsTimeOut(true);
                futureTask.cancel(true);
                throw new TaskTimeOutException("task timeout");
            }
            string = "Task TimeoutException" + e3.getMessage();
            LogConsole.e("TaskChain", string);
        }
    }

    private void execute() throws TaskTimeOutException {
        String string;
        StringBuilder sb;
        String str;
        FutureTask futureTask = new FutureTask(new Callable() { // from class: com.huawei.location.lite.common.chain.TaskClient.1
            @Override // java.util.concurrent.Callable
            public Result call() {
                return new TaskChain(TaskClient.this.tasks, TaskClient.this.taskRequest).runTask(false);
            }
        });
        ExecutorUtil.getInstance().execute(futureTask);
        try {
            Result result = (Result) futureTask.get(this.taskRequest.getMaxTimeOut(), TimeUnit.MILLISECONDS);
            if ((result instanceof Result.Failure) && this.taskRequest.getTaskFinishCallBack() != null) {
                this.taskRequest.getTaskFinishCallBack().onFail(((Result.Failure) result).getOutputData());
            } else {
                if (!(result instanceof Result.Success) || this.taskRequest.getTaskFinishCallBack() == null) {
                    return;
                }
                this.taskRequest.getTaskFinishCallBack().onSuccess(((Result.Success) result).getOutputData());
            }
        } catch (InterruptedException e) {
            e = e;
            sb = new StringBuilder();
            str = "Task InterruptedException";
            sb.append(str);
            sb.append(e.getMessage());
            string = sb.toString();
            LogConsole.e("TaskChain", string);
        } catch (ExecutionException e2) {
            e = e2;
            sb = new StringBuilder();
            str = "Task ExecutionException";
            sb.append(str);
            sb.append(e.getMessage());
            string = sb.toString();
            LogConsole.e("TaskChain", string);
        } catch (TimeoutException e3) {
            if (!futureTask.isDone()) {
                this.taskRequest.setIsTimeOut(true);
                futureTask.cancel(true);
                throw new TaskTimeOutException("task timeout");
            }
            string = "Task TimeoutException" + e3.getMessage();
            LogConsole.e("TaskChain", string);
        }
    }

    public void runTasks() {
        if (this.tasks.isEmpty()) {
            return;
        }
        if (this.taskRequest.isAsync()) {
            enqueue();
        } else {
            execute();
        }
    }
}
