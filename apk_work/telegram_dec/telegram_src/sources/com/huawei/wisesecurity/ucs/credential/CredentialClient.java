package com.huawei.wisesecurity.ucs.credential;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.huawei.wisesecurity.kfs.exception.KfsValidationException;
import com.huawei.wisesecurity.kfs.ha.message.BaseReportMsgBuilder;
import com.huawei.wisesecurity.kfs.validation.KfsValidator;
import com.huawei.wisesecurity.kfs.validation.constrains.KfsNotNull;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.exception.UcsParamException;
import com.huawei.wisesecurity.ucs.common.log.ILogUcs;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.common.report.ReportOption;
import com.huawei.wisesecurity.ucs.credential.nativelib.UcsLib;
import com.huawei.wisesecurity.ucs.credential.outer.GrsCapability;
import com.huawei.wisesecurity.ucs.credential.outer.HACapability;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability;
import com.huawei.wisesecurity.ucs.credential.outer.Selector;
import com.huawei.wisesecurity.ucs_credential.m;
import com.huawei.wisesecurity.ucs_credential.s;
import com.huawei.wisesecurity.ucs_credential.t;
import com.huawei.wisesecurity.ucs_credential.z;
import java.util.UUID;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class CredentialClient {
    public static final String TAG = "CredentialClient";
    public String appId;
    public Context context;
    public z credentialManager;
    public HACapability haCapability;

    public static class Builder {
        public String appId;

        @KfsNotNull
        public Context context;
        public GrsCapability grsCapability;
        public HACapability haCapability;
        public NetworkCapability networkCapability;
        public String serCountry;
        public int networkTimeOut = 15000;
        public int networkRetryTime = 2;
        public ReportOption reportOption = ReportOption.REPORT_NORMAL;

        public Builder appId(String str) {
            this.appId = str;
            return this;
        }

        public CredentialClient build() throws UcsException {
            try {
                String str = this.appId;
                if (str != null && str.length() > 30) {
                    throw new UcsParamException("appId length is too long");
                }
                KfsValidator.validate(this);
                m mVarSelectGrsCapability = Selector.selectGrsCapability(this.grsCapability, this.context, this.serCountry);
                return new CredentialClient(this.context, this.appId, mVarSelectGrsCapability, Selector.selectNetWorkCapability(this.networkCapability, this.context, this.networkTimeOut, this.networkRetryTime), Selector.selectHACapability(this.haCapability, mVarSelectGrsCapability, this.reportOption));
            } catch (KfsValidationException e) {
                throw new UcsParamException("CredentialClient check param error : " + e.getMessage());
            } catch (UcsException e2) {
                LogUcs.e(CredentialClient.TAG, "CredentialClient build get UCS exception : errorCode : {0} errorMsg : {1}", Long.valueOf(e2.getErrorCode()), e2.getMessage());
                throw e2;
            } catch (Throwable th) {
                String str2 = "CredentialClient build get exception : " + th.getMessage();
                LogUcs.e(CredentialClient.TAG, str2, new Object[0]);
                throw new UcsException(2001L, str2);
            }
        }

        public Builder context(Context context) {
            this.context = context;
            return this;
        }

        public Builder grsCapability(GrsCapability grsCapability) {
            this.grsCapability = grsCapability;
            return this;
        }

        public Builder haCapability(HACapability hACapability) {
            this.haCapability = hACapability;
            return this;
        }

        public Builder logInstance(ILogUcs iLogUcs) {
            LogUcs.init(iLogUcs);
            return this;
        }

        public Builder networkCapability(NetworkCapability networkCapability) {
            this.networkCapability = networkCapability;
            return this;
        }

        public Builder networkRetryTime(int i) {
            this.networkRetryTime = i;
            return this;
        }

        public Builder networkTimeOut(int i) {
            this.networkTimeOut = i;
            return this;
        }

        public Builder reportOption(ReportOption reportOption) {
            this.reportOption = reportOption;
            return this;
        }

        public Builder serCountry(String str) {
            this.serCountry = str;
            return this;
        }
    }

    public CredentialClient(Context context, String str, m mVar, NetworkCapability networkCapability, HACapability hACapability) throws UcsException {
        this.context = context;
        this.appId = str;
        this.haCapability = hACapability;
        this.credentialManager = new z(this, context, networkCapability, mVar, str);
        UcsLib.checkNativeLibrary();
    }

    public Credential applyCredential(String str) throws UcsException {
        return applyCredential(str, UUID.randomUUID().toString());
    }

    public Credential applyCredential(String str, String str2) throws UcsException {
        if (TextUtils.isEmpty(str)) {
            throw new UcsException(1001L, "packageName illegal...");
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new UcsException(1015L, "can not apply in main looper...");
        }
        s sVar = new s();
        try {
            try {
                try {
                    LogUcs.i(TAG, "start apply credential for {0} , appId is {1}", str, this.appId);
                    Credential credentialA = this.credentialManager.a(str, str2);
                    String str3 = this.credentialManager.g;
                    return credentialA;
                } catch (Exception e) {
                    String str4 = "get Credential get exception : " + e.getMessage();
                    LogUcs.e(TAG, str4, new Object[0]);
                    throw new UcsException(2001L, str4);
                }
            } catch (UcsException e2) {
                LogUcs.e(TAG, "get Credential get UcsException : " + e2.getMessage(), new Object[0]);
                e2.getErrorCode();
                e2.getMessage();
                throw e2;
            }
        } finally {
            reportLogs(sVar);
        }
    }

    public Credential genCredentialFromString(String str) throws UcsException {
        t tVar = (t) new t().setApiName("appAuth.credentialFromString").setCallTime();
        try {
            try {
                try {
                    Credential credentialFromString = Credential.fromString(this.context, str, tVar);
                    tVar.setStatusCode(0);
                    return credentialFromString;
                } catch (UcsException e) {
                    LogUcs.e(TAG, "credential from string get UcsException : {0}", e.getMessage());
                    tVar.setStatusCode((int) e.getErrorCode()).setErrorMsg(e.getMessage());
                    throw e;
                }
            } catch (Exception e2) {
                String str2 = "credential from string get exception : " + e2.getMessage();
                LogUcs.e(TAG, "{0}", str2);
                tVar.setStatusCode(2001).setErrorMsg(str2);
                throw new UcsException(2001L, str2);
            }
        } finally {
            reportLogs(tVar);
        }
    }

    public void reportLogs(BaseReportMsgBuilder baseReportMsgBuilder) {
        baseReportMsgBuilder.setAppId(this.appId).setPackageName(this.context.getPackageName()).setVersion("1.0.3.311");
    }
}
