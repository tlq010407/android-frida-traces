package com.huawei.location.activity;

import android.app.PendingIntent;
import android.os.Parcelable;
import com.google.gson.JsonSyntaxException;
import com.huawei.hms.location.api.request.BaseLocationReq;
import com.huawei.hms.location.api.response.RequestActivityIdentificationResp;
import com.huawei.location.base.activity.constant.ActivityErrorCode;
import com.huawei.location.base.activity.entity.ClientInfo;
import com.huawei.location.callback.LW;
import com.huawei.location.callback.yn;
import com.huawei.location.lite.common.exception.LocationServiceException;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.APKUtil;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.lite.common.util.ObjectCheckUtils;
import com.huawei.location.router.RouterResponse;
import com.huawei.location.router.entity.StatusInfo;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class RemoveActivityIdentificationUpdatesTaskCall extends BaseApiTaskCall {
    private static final String TAG = "RemoveActivityIdentificationUpdatesAPI";

    private boolean checkRequest(BaseLocationReq baseLocationReq) {
        if (!baseLocationReq.getLocTransactionId().isEmpty() && !baseLocationReq.getPackageName().isEmpty()) {
            return true;
        }
        LogConsole.e(TAG, "tid or packageName is invalid");
        onComplete(new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityIdentificationResp()), new StatusInfo(0, 10101, ActivityErrorCode.getErrorCodeMessage(10101))));
        return false;
    }

    private PendingIntent getPendingIntent() {
        Parcelable parcelable = getParcelable();
        if (parcelable instanceof PendingIntent) {
            return (PendingIntent) parcelable;
        }
        return null;
    }

    @Override // com.huawei.location.router.interfaces.IRouterRequest
    public void onRequest(String str) {
        BaseLocationReq baseLocationReq;
        LW lwYn;
        LogConsole.i(TAG, "onRequest start");
        this.reportBuilder.yn("AR_removeActivityState");
        BaseLocationReq baseLocationReq2 = null;
        try {
            ObjectCheckUtils.checkEmptyString(TAG, str);
            baseLocationReq = (BaseLocationReq) GsonUtil.getInstance().fromJson(str, BaseLocationReq.class);
        } catch (JsonSyntaxException unused) {
        } catch (LocationServiceException e) {
            e = e;
        } catch (Exception unused2) {
        }
        try {
        } catch (JsonSyntaxException unused3) {
            baseLocationReq2 = baseLocationReq;
            LogConsole.i(TAG, "removeActivityIdentificationUpdatesTaskCall json parse failed");
            this.errorCode = 10000;
            this.errorReason = "onRequest removeActivityIdentificationUpdates exception";
            baseLocationReq = baseLocationReq2;
            this.reportBuilder.yn(baseLocationReq);
            this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
            doExecute(new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityIdentificationResp()), new StatusInfo(0, this.errorCode, this.errorReason)));
        } catch (LocationServiceException e2) {
            e = e2;
            baseLocationReq2 = baseLocationReq;
            this.errorCode = e.getExceptionCode();
            this.errorReason = "onRequest removeActivityIdentificationUpdates LocationServiceException:" + e.getMessage();
            baseLocationReq = baseLocationReq2;
            this.reportBuilder.yn(baseLocationReq);
            this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
            doExecute(new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityIdentificationResp()), new StatusInfo(0, this.errorCode, this.errorReason)));
        } catch (Exception unused4) {
            baseLocationReq2 = baseLocationReq;
            this.errorCode = 10000;
            this.errorReason = "onRequest removeActivityIdentificationUpdates exception";
            baseLocationReq = baseLocationReq2;
            this.reportBuilder.yn(baseLocationReq);
            this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
            doExecute(new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityIdentificationResp()), new StatusInfo(0, this.errorCode, this.errorReason)));
        }
        if (!checkRequest(baseLocationReq)) {
            this.reportBuilder.yn(baseLocationReq);
            this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
            return;
        }
        String locTransactionId = baseLocationReq.getLocTransactionId();
        String packageName = baseLocationReq.getPackageName();
        ClientInfo clientInfo = new ClientInfo(packageName, APKUtil.getUidByPackageName(packageName), 0, locTransactionId);
        PendingIntent pendingIntent = getPendingIntent();
        if (pendingIntent != null) {
            lwYn = com.huawei.location.callback.yn.Vw().yn(pendingIntent);
            ObjectCheckUtils.checkNullObject(TAG, lwYn, ActivityErrorCode.NO_MATCHED_INTENT, "NO_MATCHED_INTENT");
        } else {
            lwYn = com.huawei.location.callback.yn.Vw().yn(getRouterCallback());
        }
        yn.C0015yn c0015yn = new yn.C0015yn();
        if (lwYn instanceof yn.C0015yn) {
            c0015yn = (yn.C0015yn) lwYn;
        }
        ObjectCheckUtils.checkNullObject(TAG, c0015yn, yn.C0015yn.class);
        ObjectCheckUtils.checkNullObject(TAG, c0015yn.FB(), yn.C0015yn.class);
        ((com.huawei.location.logic.Vw) com.huawei.location.logic.Vw.yn()).yn(c0015yn.FB(), clientInfo);
        com.huawei.location.callback.yn.Vw().yn(c0015yn);
        this.errorReason = "removeActivityIdentificationUpdates success";
        this.reportBuilder.yn(baseLocationReq);
        this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
        doExecute(new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityIdentificationResp()), new StatusInfo(0, this.errorCode, this.errorReason)));
    }
}
