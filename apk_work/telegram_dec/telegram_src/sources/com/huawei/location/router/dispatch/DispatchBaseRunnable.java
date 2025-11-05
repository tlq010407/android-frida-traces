package com.huawei.location.router.dispatch;

import com.huawei.hms.support.api.location.common.exception.LocationStatusCode;
import com.huawei.location.lite.common.agc.AGCManager;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.RouterComponentType;
import com.huawei.location.router.BaseRouterTaskCallImpl;
import com.huawei.location.router.entity.RouterRequest;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class DispatchBaseRunnable implements IDispatchExceptiponListener {
    private static final String TAG = "DispatchBaseRunnable";
    protected BaseRouterTaskCallImpl apiRequest;
    protected RouterRequest routerRequest;

    public DispatchBaseRunnable(RouterRequest routerRequest) {
        this.routerRequest = routerRequest;
    }

    protected boolean agcAuth() {
        if (RouterComponentType.getComponentType() == 0) {
            return AGCManager.getInstance().checkAgc();
        }
        return true;
    }

    public BaseRouterTaskCallImpl getApiRequest() {
        return this.apiRequest;
    }

    public RouterRequest getRouterRequest() {
        return this.routerRequest;
    }

    protected void handlerErrorResult(int i) {
        ErrorTaskCall errorTaskCall = new ErrorTaskCall();
        errorTaskCall.setRouterRequest(this.routerRequest);
        errorTaskCall.onComplete(i);
    }

    @Override // com.huawei.location.router.dispatch.IDispatchExceptiponListener
    public void onDispatchError(int i, String str) {
        if (i == 10001) {
            handlerErrorResult(LocationStatusCode.NOT_YET_SUPPORTED);
            return;
        }
        LogConsole.e(TAG, "other error code :" + i + "msg:" + str);
    }

    public void setApiRequest(BaseRouterTaskCallImpl baseRouterTaskCallImpl) {
        this.apiRequest = baseRouterTaskCallImpl;
    }
}
