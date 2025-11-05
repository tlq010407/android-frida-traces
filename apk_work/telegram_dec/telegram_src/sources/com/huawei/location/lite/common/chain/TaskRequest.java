package com.huawei.location.lite.common.chain;

import com.huawei.location.lite.common.chain.Result;
import com.huawei.location.lite.common.chain.Task;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TaskRequest {
    private Data data;
    private Result result;
    private TaskFinishCallBack taskFinishCallBack;
    private int maxTimeOut = 120000;
    private boolean isAsync = false;
    private boolean isTimeOut = false;

    private void handleAsyncResult(int i, Task.Chain chain) {
        boolean z;
        switch (i) {
            case 100:
                Result result = this.result;
                if (result instanceof Result.Success) {
                    this.taskFinishCallBack.onSuccess(((Result.Success) result).getOutputData());
                    return;
                }
                return;
            case 101:
                Result result2 = this.result;
                if (result2 instanceof Result.Failure) {
                    this.taskFinishCallBack.onFail(((Result.Failure) result2).getOutputData());
                    return;
                }
                return;
            case 102:
                z = true;
                break;
            case 103:
                z = false;
                break;
            default:
                return;
        }
        chain.runTask(z);
    }

    private void handleSyncResult(int i, Task.Chain chain) {
        boolean z;
        if (i == 102) {
            z = true;
        } else if (i != 103) {
            return;
        } else {
            z = false;
        }
        chain.runTask(z);
    }

    public Data getInputData() {
        return this.data;
    }

    public int getMaxTimeOut() {
        return this.maxTimeOut;
    }

    public Data getOutputData() {
        Result result = this.result;
        return result instanceof Result.Success ? ((Result.Success) result).getOutputData() : result instanceof Result.Failure ? ((Result.Failure) result).getOutputData() : this.data;
    }

    public Result getResult() {
        return this.result;
    }

    public TaskFinishCallBack getTaskFinishCallBack() {
        return this.taskFinishCallBack;
    }

    public boolean isAsync() {
        return this.isAsync;
    }

    public void setInputData(Data data) {
        this.data = data;
    }

    public void setIsTimeOut(boolean z) {
        this.isTimeOut = z;
    }

    public void setMaxTimeOut(int i) {
        this.maxTimeOut = i;
    }

    public void setResult(Result result, Task.Chain chain) {
        this.result = result;
        if (this.taskFinishCallBack == null || this.isTimeOut) {
            return;
        }
        int iProceed = chain.proceed();
        if (this.isAsync) {
            handleAsyncResult(iProceed, chain);
        } else {
            handleSyncResult(iProceed, chain);
        }
    }

    public void setTaskFinishCallBack(TaskFinishCallBack taskFinishCallBack) {
        this.taskFinishCallBack = taskFinishCallBack;
    }
}
