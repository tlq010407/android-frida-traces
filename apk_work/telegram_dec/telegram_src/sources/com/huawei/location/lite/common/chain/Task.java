package com.huawei.location.lite.common.chain;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface Task {

    public interface Chain {
        TaskRequest getRequest();

        int proceed();

        Result runTask(boolean z);
    }

    void runTask(Chain chain);
}
