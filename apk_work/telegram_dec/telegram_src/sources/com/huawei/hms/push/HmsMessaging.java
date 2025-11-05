package com.huawei.hms.push;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hmf.tasks.Tasks;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.encrypt.PushEncrypter;
import com.huawei.hms.aaid.init.AutoInitHelper;
import com.huawei.hms.aaid.plugin.ProxyCenter;
import com.huawei.hms.aaid.task.PushClientBuilder;
import com.huawei.hms.aaid.utils.BaseUtils;
import com.huawei.hms.aaid.utils.PushPreferences;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.push.task.BaseVoidTask;
import com.huawei.hms.push.task.IntentCallable;
import com.huawei.hms.push.task.SendUpStreamTask;
import com.huawei.hms.push.task.SubscribeTask;
import com.huawei.hms.push.utils.PushBiUtil;
import com.huawei.hms.support.api.entity.push.EnableNotifyReq;
import com.huawei.hms.support.api.entity.push.PushNaming;
import com.huawei.hms.support.api.entity.push.SubscribeReq;
import com.huawei.hms.support.api.entity.push.UpSendMsgReq;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
import com.huawei.hms.utils.NetWorkUtil;
import java.util.regex.Pattern;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class HmsMessaging {
    public static final String DEFAULT_TOKEN_SCOPE = "HCM";
    public static final Pattern a = Pattern.compile("[\\u4e00-\\u9fa5\\w-_.~%]{1,900}");
    public Context b;
    public HuaweiApi<Api.ApiOptions.NoOptions> c;

    public HmsMessaging(Context context) {
        Preconditions.checkNotNull(context);
        this.b = context;
        HuaweiApi<Api.ApiOptions.NoOptions> huaweiApi = new HuaweiApi<>(context, (Api<Api.ApiOptions>) new Api(HuaweiApiAvailability.HMS_API_NAME_PUSH), (Api.ApiOptions) null, new PushClientBuilder());
        this.c = huaweiApi;
        huaweiApi.setKitSdkVersion(60500300);
    }

    public static synchronized HmsMessaging getInstance(Context context) {
        return new HmsMessaging(context);
    }

    public final Task a(String str, String str2) throws ApiException {
        String strReportEntry = PushBiUtil.reportEntry(this.b, PushNaming.SUBSCRIBE);
        if (str == null || !a.matcher(str).matches()) {
            PushBiUtil.reportExit(this.b, PushNaming.SUBSCRIBE, strReportEntry, ErrorEnum.ERROR_ARGUMENTS_INVALID);
            HMSLog.e("HmsMessaging", "Invalid topic: topic should match the format:[\\u4e00-\\u9fa5\\w-_.~%]{1,900}");
            throw new IllegalArgumentException("Invalid topic: topic should match the format:[\\u4e00-\\u9fa5\\w-_.~%]{1,900}");
        }
        if (ProxyCenter.getProxy() != null) {
            HMSLog.i("HmsMessaging", "use proxy subscribe.");
            return TextUtils.equals(str2, "Sub") ? ProxyCenter.getProxy().subscribe(this.b, str, strReportEntry) : ProxyCenter.getProxy().unsubscribe(this.b, str, strReportEntry);
        }
        try {
            ErrorEnum errorEnumA = d.a(this.b);
            if (errorEnumA != ErrorEnum.SUCCESS) {
                throw errorEnumA.toApiException();
            }
            if (NetWorkUtil.getNetworkType(this.b) == 0) {
                HMSLog.e("HmsMessaging", "no network");
                throw ErrorEnum.ERROR_NO_NETWORK.toApiException();
            }
            SubscribeReq subscribeReq = new SubscribeReq(this.b, str2, str);
            subscribeReq.setToken(BaseUtils.getLocalToken(this.b, null));
            return s.b() ? this.c.doWrite(new BaseVoidTask(PushNaming.SUBSCRIBE, JsonUtil.createJsonString(subscribeReq), strReportEntry)) : this.c.doWrite(new SubscribeTask(PushNaming.SUBSCRIBE, JsonUtil.createJsonString(subscribeReq), strReportEntry));
        } catch (ApiException e) {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            taskCompletionSource.setException(e);
            PushBiUtil.reportExit(this.b, PushNaming.SUBSCRIBE, strReportEntry, e.getStatusCode());
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
            ErrorEnum errorEnum = ErrorEnum.ERROR_INTERNAL_ERROR;
            taskCompletionSource2.setException(errorEnum.toApiException());
            PushBiUtil.reportExit(this.b, PushNaming.SUBSCRIBE, strReportEntry, errorEnum);
            return taskCompletionSource2.getTask();
        }
    }

    public final Task a(boolean z) {
        String strReportEntry = PushBiUtil.reportEntry(this.b, PushNaming.SET_NOTIFY_FLAG);
        if (!s.d(this.b) || s.b()) {
            HMSLog.i("HmsMessaging", "turn on/off with AIDL");
            EnableNotifyReq enableNotifyReq = new EnableNotifyReq();
            enableNotifyReq.setPackageName(this.b.getPackageName());
            enableNotifyReq.setEnable(z);
            return this.c.doWrite(new BaseVoidTask(PushNaming.SET_NOTIFY_FLAG, JsonUtil.createJsonString(enableNotifyReq), strReportEntry));
        }
        if (HwBuildEx.VERSION.EMUI_SDK_INT < 12) {
            HMSLog.e("HmsMessaging", "operation not available on Huawei device with EMUI lower than 5.1");
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            ErrorEnum errorEnum = ErrorEnum.ERROR_OPERATION_NOT_SUPPORTED;
            taskCompletionSource.setException(errorEnum.toApiException());
            PushBiUtil.reportExit(this.b, PushNaming.SET_NOTIFY_FLAG, strReportEntry, errorEnum);
            return taskCompletionSource.getTask();
        }
        if (s.b(this.b) < 90101310) {
            HMSLog.i("HmsMessaging", "turn on/off with broadcast v1");
            Intent intentPutExtra = new Intent("com.huawei.intent.action.SELF_SHOW_FLAG").putExtra("enalbeFlag", PushEncrypter.encrypterOld(this.b, this.b.getPackageName() + "#" + z));
            intentPutExtra.setPackage("android");
            return Tasks.callInBackground(new IntentCallable(this.b, intentPutExtra, strReportEntry));
        }
        HMSLog.i("HmsMessaging", "turn on/off with broadcast v2");
        new PushPreferences(this.b, "push_notify_flag").saveBoolean("notify_msg_enable", !z);
        Uri uri = Uri.parse("content://" + this.b.getPackageName() + ".huawei.push.provider/push_notify_flag.xml");
        Intent intent = new Intent("com.huawei.android.push.intent.SDK_COMMAND");
        intent.putExtra("type", "enalbeFlag");
        intent.putExtra("pkgName", this.b.getPackageName());
        intent.putExtra(RemoteMessageConst.Notification.URL, uri);
        intent.setPackage("android");
        return Tasks.callInBackground(new IntentCallable(this.b, intent, strReportEntry));
    }

    public final void a(RemoteMessage remoteMessage) {
        String strReportEntry = PushBiUtil.reportEntry(this.b, PushNaming.UPSEND_MSG);
        ErrorEnum errorEnumA = d.a(this.b);
        if (errorEnumA != ErrorEnum.SUCCESS) {
            HMSLog.e("HmsMessaging", "Message sent failed:" + errorEnumA.getExternalCode() + ':' + errorEnumA.getMessage());
            PushBiUtil.reportExit(this.b, PushNaming.UPSEND_MSG, strReportEntry, errorEnumA);
            throw new UnsupportedOperationException(errorEnumA.getMessage());
        }
        if (TextUtils.isEmpty(remoteMessage.getTo())) {
            HMSLog.e("HmsMessaging", "Mandatory parameter 'to' missing");
            PushBiUtil.reportExit(this.b, PushNaming.UPSEND_MSG, strReportEntry, ErrorEnum.ERROR_ARGUMENTS_INVALID);
            throw new IllegalArgumentException("Mandatory parameter 'to' missing");
        }
        if (TextUtils.isEmpty(remoteMessage.getMessageId())) {
            HMSLog.e("HmsMessaging", "Mandatory parameter 'message_id' missing");
            PushBiUtil.reportExit(this.b, PushNaming.UPSEND_MSG, strReportEntry, ErrorEnum.ERROR_ARGUMENTS_INVALID);
            throw new IllegalArgumentException("Mandatory parameter 'message_id' missing");
        }
        if (TextUtils.isEmpty(remoteMessage.getData())) {
            HMSLog.e("HmsMessaging", "Mandatory parameter 'data' missing");
            PushBiUtil.reportExit(this.b, PushNaming.UPSEND_MSG, strReportEntry, ErrorEnum.ERROR_ARGUMENTS_INVALID);
            throw new IllegalArgumentException("Mandatory parameter 'data' missing");
        }
        UpSendMsgReq upSendMsgReq = new UpSendMsgReq();
        upSendMsgReq.setPackageName(this.b.getPackageName());
        upSendMsgReq.setMessageId(remoteMessage.getMessageId());
        upSendMsgReq.setTo(remoteMessage.getTo());
        upSendMsgReq.setData(remoteMessage.getData());
        upSendMsgReq.setMessageType(remoteMessage.getMessageType());
        upSendMsgReq.setTtl(remoteMessage.getTtl());
        upSendMsgReq.setCollapseKey(remoteMessage.getCollapseKey());
        upSendMsgReq.setSendMode(remoteMessage.getSendMode());
        upSendMsgReq.setReceiptMode(remoteMessage.getReceiptMode());
        if (s.b()) {
            this.c.doWrite(new BaseVoidTask(PushNaming.UPSEND_MSG, JsonUtil.createJsonString(upSendMsgReq), strReportEntry));
        } else {
            a(upSendMsgReq, strReportEntry);
        }
    }

    public final void a(UpSendMsgReq upSendMsgReq, String str) {
        upSendMsgReq.setToken(BaseUtils.getLocalToken(this.b, null));
        try {
            this.c.doWrite(new SendUpStreamTask(PushNaming.UPSEND_MSG, JsonUtil.createJsonString(upSendMsgReq), str, upSendMsgReq.getPackageName(), upSendMsgReq.getMessageId()));
        } catch (Exception e) {
            if (!(e.getCause() instanceof ApiException)) {
                PushBiUtil.reportExit(this.b, PushNaming.UPSEND_MSG, str, ErrorEnum.ERROR_INTERNAL_ERROR);
            } else {
                PushBiUtil.reportExit(this.b, PushNaming.UPSEND_MSG, str, ((ApiException) e.getCause()).getStatusCode());
            }
        }
    }

    public boolean isAutoInitEnabled() {
        return AutoInitHelper.isAutoInitEnabled(this.b);
    }

    public void send(RemoteMessage remoteMessage) {
        if (ProxyCenter.getProxy() != null) {
            HMSLog.e("HmsMessaging", "Operation(send) unsupported");
            throw new UnsupportedOperationException("Operation(send) unsupported");
        }
        HMSLog.i("HmsMessaging", "send upstream message");
        a(remoteMessage);
    }

    public void setAutoInitEnabled(boolean z) {
        AutoInitHelper.setAutoInitEnabled(this.b, z);
    }

    public Task subscribe(String str) {
        HMSLog.i("HmsMessaging", "invoke subscribe");
        return a(str, "Sub");
    }

    public Task turnOffPush() {
        if (ProxyCenter.getProxy() != null) {
            HMSLog.i("HmsMessaging", "turn off for proxy");
            return ProxyCenter.getProxy().turnOff(this.b, null);
        }
        HMSLog.i("HmsMessaging", "invoke turnOffPush");
        return a(false);
    }

    public Task turnOnPush() {
        if (ProxyCenter.getProxy() != null) {
            HMSLog.i("HmsMessaging", "turn on for proxy");
            return ProxyCenter.getProxy().turnOn(this.b, null);
        }
        HMSLog.i("HmsMessaging", "invoke turnOnPush");
        return a(true);
    }

    public Task unsubscribe(String str) {
        HMSLog.i("HmsMessaging", "invoke unsubscribe");
        return a(str, "UnSub");
    }
}
