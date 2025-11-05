package com.huawei.location.activity;

import android.app.PendingIntent;
import android.os.Parcelable;
import com.google.gson.JsonSyntaxException;
import com.huawei.hms.location.api.request.RemoveActivityConversionReq;
import com.huawei.hms.location.api.response.RequestActivityConversionResp;
import com.huawei.location.base.activity.constant.ActivityErrorCode;
import com.huawei.location.base.activity.constant.ActivityRecognitionConstants;
import com.huawei.location.base.activity.entity.ClientInfo;
import com.huawei.location.callback.LW;
import com.huawei.location.callback.Vw;
import com.huawei.location.lite.common.exception.LocationServiceException;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.APKUtil;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.lite.common.util.ObjectCheckUtils;
import com.huawei.location.router.RouterResponse;
import com.huawei.location.router.entity.StatusInfo;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class RemoveActivityConversionUpdatesTaskCall extends BaseApiTaskCall {
    private static final String TAG = "RemoveActivityConversionUpdatesAPI";

    private boolean checkRequest(RemoveActivityConversionReq removeActivityConversionReq) {
        RouterResponse routerResponse;
        if (removeActivityConversionReq.getPackageName().isEmpty()) {
            LogConsole.e(TAG, "packageName is invalid");
            routerResponse = new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityConversionResp()), new StatusInfo(0, 10101, ActivityErrorCode.getErrorCodeMessage(10101)));
        } else {
            if (!removeActivityConversionReq.getLocTransactionId().isEmpty()) {
                return true;
            }
            LogConsole.e(TAG, "transactionId is invalid");
            routerResponse = new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityConversionResp()), new StatusInfo(0, 10101, ActivityErrorCode.getErrorCodeMessage(10101)));
        }
        onComplete(routerResponse);
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
        RemoveActivityConversionReq removeActivityConversionReq;
        LW lwYn;
        LogConsole.i(TAG, "onRequest start");
        this.reportBuilder.yn("AR_removeActivityTransition");
        RemoveActivityConversionReq removeActivityConversionReq2 = null;
        try {
            ObjectCheckUtils.checkEmptyString(TAG, str);
            removeActivityConversionReq = (RemoveActivityConversionReq) GsonUtil.getInstance().fromJson(str, RemoveActivityConversionReq.class);
            try {
                removeActivityConversionReq.setModuleName(ActivityRecognitionConstants.LOCATION_MODULE);
            } catch (JsonSyntaxException unused) {
                removeActivityConversionReq2 = removeActivityConversionReq;
                LogConsole.i(TAG, "removeActivityConversionUpdatesTaskCall json parse failed");
                this.errorCode = 10000;
                this.errorReason = "onRequest removeActivityConversionUpdates exception";
                removeActivityConversionReq = removeActivityConversionReq2;
                this.reportBuilder.yn(removeActivityConversionReq);
                this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
                doExecute(new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityConversionResp()), new StatusInfo(0, this.errorCode, this.errorReason)));
            } catch (LocationServiceException e) {
                e = e;
                removeActivityConversionReq2 = removeActivityConversionReq;
                this.errorCode = e.getExceptionCode();
                this.errorReason = "onRequest removeActivityConversionUpdates LocationServiceException:" + e.getMessage();
                removeActivityConversionReq = removeActivityConversionReq2;
                this.reportBuilder.yn(removeActivityConversionReq);
                this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
                doExecute(new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityConversionResp()), new StatusInfo(0, this.errorCode, this.errorReason)));
            } catch (Exception unused2) {
                removeActivityConversionReq2 = removeActivityConversionReq;
                this.errorCode = 10000;
                this.errorReason = "onRequest removeActivityConversionUpdates exception";
                removeActivityConversionReq = removeActivityConversionReq2;
                this.reportBuilder.yn(removeActivityConversionReq);
                this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
                doExecute(new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityConversionResp()), new StatusInfo(0, this.errorCode, this.errorReason)));
            }
        } catch (JsonSyntaxException unused3) {
        } catch (LocationServiceException e2) {
            e = e2;
        } catch (Exception unused4) {
        }
        if (!checkRequest(removeActivityConversionReq)) {
            this.reportBuilder.yn(removeActivityConversionReq);
            this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
            return;
        }
        String locTransactionId = removeActivityConversionReq.getLocTransactionId();
        String packageName = removeActivityConversionReq.getPackageName();
        ClientInfo clientInfo = new ClientInfo(packageName, APKUtil.getUidByPackageName(packageName), 0, locTransactionId);
        PendingIntent pendingIntent = getPendingIntent();
        if (pendingIntent != null) {
            lwYn = com.huawei.location.callback.Vw.Vw().yn(pendingIntent);
            ObjectCheckUtils.checkNullObject(TAG, lwYn, ActivityErrorCode.NO_MATCHED_INTENT, "NO_MATCHED_INTENT");
        } else {
            lwYn = com.huawei.location.callback.Vw.Vw().yn(getRouterCallback());
        }
        Vw.yn ynVar = new Vw.yn();
        if (lwYn instanceof Vw.yn) {
            ynVar = (Vw.yn) lwYn;
        }
        ObjectCheckUtils.checkNullObject(TAG, ynVar, Vw.yn.class);
        ObjectCheckUtils.checkNullObject(TAG, ynVar.FB(), Vw.yn.class);
        ((com.huawei.location.logic.Vw) com.huawei.location.logic.Vw.yn()).yn(removeActivityConversionReq.getModuleName(), ynVar.FB(), clientInfo);
        com.huawei.location.callback.Vw.Vw().yn(ynVar);
        this.errorReason = "removeActivityConversionUpdates success";
        this.reportBuilder.yn(removeActivityConversionReq);
        this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
        doExecute(new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityConversionResp()), new StatusInfo(0, this.errorCode, this.errorReason)));
    }
}
