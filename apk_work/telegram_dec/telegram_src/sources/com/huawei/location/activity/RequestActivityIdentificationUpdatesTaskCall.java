package com.huawei.location.activity;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Parcelable;
import com.google.gson.JsonSyntaxException;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.location.ActivityIdentificationData;
import com.huawei.hms.location.ActivityIdentificationResponse;
import com.huawei.hms.location.api.request.RequestActivityIdentificationReq;
import com.huawei.hms.location.api.response.RequestActivityIdentificationResp;
import com.huawei.hms.location.entity.activity.ActivityRecognitionResult;
import com.huawei.hms.location.entity.activity.DetectedActivity;
import com.huawei.location.base.activity.callback.ARCallback;
import com.huawei.location.base.activity.constant.ActivityErrorCode;
import com.huawei.location.base.activity.entity.ClientInfo;
import com.huawei.location.base.activity.permission.ARLocationPermissionManager;
import com.huawei.location.callback.LW;
import com.huawei.location.callback.yn;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.exception.LocationServiceException;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.APKUtil;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.lite.common.util.ObjectCheckUtils;
import com.huawei.location.router.RouterResponse;
import com.huawei.location.router.entity.StatusInfo;
import com.huawei.secure.android.common.intent.SafeBundle;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class RequestActivityIdentificationUpdatesTaskCall extends BaseApiTaskCall {
    private static final String KEY_RESPONSE = "KEY_RESPONSE";
    private static final String KEY_RESPONSE_RESULT = "com.huawei.hms.location.internal.EXTRA_ACTIVITY_RESULT";
    private static final String TAG = "RequestActivityIdentificationUpdatesAPI";
    private yn.C0015yn callBackInfo;
    private ClientInfo clientInfo;
    private PendingIntent pendingIntent;
    private RequestActivityIdentificationReq requestActivityIdentificationReq = null;

    private class Vw implements ARCallback {
        private Vw() {
        }

        @Override // com.huawei.location.base.activity.callback.ARCallback
        public void onActivityRecognition(ActivityRecognitionResult activityRecognitionResult) throws PendingIntent.CanceledException {
            String str;
            RequestActivityIdentificationUpdatesTaskCall.this.reportBuilder.yn("AR_activityStateCallback");
            if (RequestActivityIdentificationUpdatesTaskCall.this.pendingIntent == null) {
                RequestActivityIdentificationResp requestActivityIdentificationResp = new RequestActivityIdentificationResp();
                requestActivityIdentificationResp.setActivityRecognitionResult(activityRecognitionResult);
                String json = GsonUtil.getInstance().toJson(requestActivityIdentificationResp);
                RequestActivityIdentificationUpdatesTaskCall requestActivityIdentificationUpdatesTaskCall = RequestActivityIdentificationUpdatesTaskCall.this;
                requestActivityIdentificationUpdatesTaskCall.doExecute(new RouterResponse(json, new StatusInfo(0, requestActivityIdentificationUpdatesTaskCall.errorCode, requestActivityIdentificationUpdatesTaskCall.errorReason)));
            } else {
                if (!ARLocationPermissionManager.checkCPActivityRecognitionPermissionByException(RequestActivityIdentificationUpdatesTaskCall.this.getTAG(), "checkActivityRecognitionPermission", RequestActivityIdentificationUpdatesTaskCall.this.clientInfo.getClientPid(), RequestActivityIdentificationUpdatesTaskCall.this.clientInfo.getClientUid())) {
                    RequestActivityIdentificationUpdatesTaskCall.this.removeActivityIdentificationUpdates();
                    return;
                }
                try {
                    List<DetectedActivity> probableActivities = activityRecognitionResult.getProbableActivities();
                    ArrayList arrayList = new ArrayList();
                    for (DetectedActivity detectedActivity : probableActivities) {
                        arrayList.add(new ActivityIdentificationData(detectedActivity.getType() + 100, detectedActivity.getConfidence()));
                    }
                    ActivityIdentificationResponse activityIdentificationResponse = new ActivityIdentificationResponse(arrayList, activityRecognitionResult.getTime(), activityRecognitionResult.getElapsedRealtimeMillis());
                    LogConsole.i(RequestActivityIdentificationUpdatesTaskCall.TAG, "sending recognition result:" + activityRecognitionResult);
                    Intent intent = new Intent();
                    SafeBundle safeBundle = new SafeBundle();
                    safeBundle.putParcelable(RequestActivityIdentificationUpdatesTaskCall.KEY_RESPONSE, activityIdentificationResponse);
                    intent.putExtra(RequestActivityIdentificationUpdatesTaskCall.KEY_RESPONSE_RESULT, safeBundle.getBundle());
                    RequestActivityIdentificationUpdatesTaskCall.this.pendingIntent.send(ContextUtil.getContext(), 0, intent);
                } catch (PendingIntent.CanceledException unused) {
                    str = "CanceledException";
                    LogConsole.e(RequestActivityIdentificationUpdatesTaskCall.TAG, str, true);
                    RequestActivityIdentificationUpdatesTaskCall.this.errorCode = 10000;
                    RequestActivityIdentificationUpdatesTaskCall requestActivityIdentificationUpdatesTaskCall2 = RequestActivityIdentificationUpdatesTaskCall.this;
                    requestActivityIdentificationUpdatesTaskCall2.reportBuilder.yn(requestActivityIdentificationUpdatesTaskCall2.requestActivityIdentificationReq);
                    RequestActivityIdentificationUpdatesTaskCall.this.reportBuilder.yn().Vw(String.valueOf(RequestActivityIdentificationUpdatesTaskCall.this.errorCode));
                } catch (ApiException unused2) {
                    str = "ApiException";
                    LogConsole.e(RequestActivityIdentificationUpdatesTaskCall.TAG, str, true);
                    RequestActivityIdentificationUpdatesTaskCall.this.errorCode = 10000;
                    RequestActivityIdentificationUpdatesTaskCall requestActivityIdentificationUpdatesTaskCall22 = RequestActivityIdentificationUpdatesTaskCall.this;
                    requestActivityIdentificationUpdatesTaskCall22.reportBuilder.yn(requestActivityIdentificationUpdatesTaskCall22.requestActivityIdentificationReq);
                    RequestActivityIdentificationUpdatesTaskCall.this.reportBuilder.yn().Vw(String.valueOf(RequestActivityIdentificationUpdatesTaskCall.this.errorCode));
                } catch (NullPointerException unused3) {
                    str = "NullPointerException";
                    LogConsole.e(RequestActivityIdentificationUpdatesTaskCall.TAG, str, true);
                    RequestActivityIdentificationUpdatesTaskCall.this.errorCode = 10000;
                    RequestActivityIdentificationUpdatesTaskCall requestActivityIdentificationUpdatesTaskCall222 = RequestActivityIdentificationUpdatesTaskCall.this;
                    requestActivityIdentificationUpdatesTaskCall222.reportBuilder.yn(requestActivityIdentificationUpdatesTaskCall222.requestActivityIdentificationReq);
                    RequestActivityIdentificationUpdatesTaskCall.this.reportBuilder.yn().Vw(String.valueOf(RequestActivityIdentificationUpdatesTaskCall.this.errorCode));
                }
            }
            RequestActivityIdentificationUpdatesTaskCall requestActivityIdentificationUpdatesTaskCall2222 = RequestActivityIdentificationUpdatesTaskCall.this;
            requestActivityIdentificationUpdatesTaskCall2222.reportBuilder.yn(requestActivityIdentificationUpdatesTaskCall2222.requestActivityIdentificationReq);
            RequestActivityIdentificationUpdatesTaskCall.this.reportBuilder.yn().Vw(String.valueOf(RequestActivityIdentificationUpdatesTaskCall.this.errorCode));
        }
    }

    private boolean checkRequest(RequestActivityIdentificationReq requestActivityIdentificationReq) {
        RouterResponse routerResponse;
        if (requestActivityIdentificationReq.getPackageName().isEmpty()) {
            LogConsole.e(TAG, "packageName is invalid");
            routerResponse = new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityIdentificationResp()), new StatusInfo(0, 10101, ActivityErrorCode.getErrorCodeMessage(10101)));
        } else {
            if (!requestActivityIdentificationReq.getLocTransactionId().isEmpty()) {
                return true;
            }
            LogConsole.e(TAG, "tid is invalid");
            routerResponse = new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityIdentificationResp()), new StatusInfo(0, 10101, ActivityErrorCode.getErrorCodeMessage(10101)));
        }
        onComplete(routerResponse);
        return false;
    }

    private void getCallback() {
        LW lwYn = this.pendingIntent != null ? com.huawei.location.callback.yn.Vw().yn(this.pendingIntent) : com.huawei.location.callback.yn.Vw().yn(getRouterCallback());
        if (lwYn instanceof yn.C0015yn) {
            this.callBackInfo = (yn.C0015yn) lwYn;
        }
    }

    private PendingIntent getPendingIntent() {
        Parcelable parcelable = getParcelable();
        if (parcelable instanceof PendingIntent) {
            this.pendingIntent = (PendingIntent) parcelable;
        }
        return this.pendingIntent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTAG() {
        return TAG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeActivityIdentificationUpdates() {
        int i;
        LogConsole.i(TAG, "removeActivityIdentificationUpdates start");
        if (this.callBackInfo != null) {
            try {
                ((com.huawei.location.logic.Vw) com.huawei.location.logic.Vw.yn()).yn(this.callBackInfo.FB(), this.clientInfo);
                com.huawei.location.callback.yn.Vw().yn(this.callBackInfo);
                i = 0;
            } catch (LocationServiceException e) {
                int exceptionCode = e.getExceptionCode();
                this.errorReason = "removeActivityUpdates in request api LocationServiceException:" + e.getMessage();
                i = exceptionCode;
            } catch (Exception unused) {
                this.errorReason = "removeActivityUpdates in request api exception";
                i = 10000;
            }
        } else {
            i = 0;
        }
        this.reportBuilder.yn(this.requestActivityIdentificationReq);
        this.reportBuilder.yn("AR_removeActivityState");
        this.reportBuilder.yn().Vw(String.valueOf(i));
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ec  */
    @Override // com.huawei.location.router.interfaces.IRouterRequest
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onRequest(String str) {
        String str2;
        RequestActivityIdentificationReq requestActivityIdentificationReq;
        LogConsole.i(TAG, "onRequest start");
        this.reportBuilder.yn("AR_requestActivityState");
        try {
            ObjectCheckUtils.checkEmptyString(TAG, str);
            requestActivityIdentificationReq = (RequestActivityIdentificationReq) GsonUtil.getInstance().fromJson(str, RequestActivityIdentificationReq.class);
            this.requestActivityIdentificationReq = requestActivityIdentificationReq;
        } catch (JsonSyntaxException unused) {
            LogConsole.i(TAG, "requestActivityIdentificationUpdatesTaskCall json parse failed");
            this.errorCode = 10000;
            str2 = "onRequest requestActivityIdentificationUpdates json parse exception";
            this.errorReason = str2;
            if (this.errorCode == 0) {
                doExecute(new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityIdentificationResp()), new StatusInfo(0, this.errorCode, this.errorReason)));
            }
            this.reportBuilder.yn(this.requestActivityIdentificationReq);
            this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
        } catch (LocationServiceException e) {
            this.errorCode = e.getExceptionCode();
            str2 = "onRequest requestActivityIdentificationUpdates LocationServiceException:" + e.getMessage();
            this.errorReason = str2;
            if (this.errorCode == 0) {
            }
            this.reportBuilder.yn(this.requestActivityIdentificationReq);
            this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
        } catch (Exception unused2) {
            this.errorCode = 10000;
            str2 = "onRequest requestActivityIdentificationUpdates exception";
            this.errorReason = str2;
            if (this.errorCode == 0) {
            }
            this.reportBuilder.yn(this.requestActivityIdentificationReq);
            this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
        }
        if (!checkRequest(requestActivityIdentificationReq)) {
            this.reportBuilder.yn(this.requestActivityIdentificationReq);
            this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
            return;
        }
        String locTransactionId = this.requestActivityIdentificationReq.getLocTransactionId();
        String packageName = this.requestActivityIdentificationReq.getPackageName();
        this.clientInfo = new ClientInfo(packageName, APKUtil.getUidByPackageName(packageName), 0, locTransactionId);
        long detectionIntervalMillis = this.requestActivityIdentificationReq.getDetectionIntervalMillis();
        if (detectionIntervalMillis <= 0) {
            detectionIntervalMillis = 30000;
        }
        this.pendingIntent = getPendingIntent();
        getCallback();
        if (this.callBackInfo == null) {
            yn.C0015yn c0015yn = new yn.C0015yn();
            this.callBackInfo = c0015yn;
            c0015yn.yn(new Vw());
            this.callBackInfo.yn(this.pendingIntent);
            this.callBackInfo.yn(getRouterCallback());
            com.huawei.location.callback.yn.Vw().Vw(this.callBackInfo);
        }
        ((com.huawei.location.logic.Vw) com.huawei.location.logic.Vw.yn()).yn(detectionIntervalMillis, this.callBackInfo.FB(), this.clientInfo);
        this.errorReason = "requestActivityIdentificationUpdates success";
        if (this.errorCode == 0 || this.callBackInfo.yn() != null) {
            doExecute(new RouterResponse(GsonUtil.getInstance().toJson(new RequestActivityIdentificationResp()), new StatusInfo(0, this.errorCode, this.errorReason)));
        }
        this.reportBuilder.yn(this.requestActivityIdentificationReq);
        this.reportBuilder.yn().yn(String.valueOf(this.errorCode));
    }
}
