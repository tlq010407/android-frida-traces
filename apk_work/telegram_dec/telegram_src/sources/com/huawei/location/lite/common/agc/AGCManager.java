package com.huawei.location.lite.common.agc;

import android.text.TextUtils;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hms.location.BuildConfig;
import com.huawei.location.lite.common.agc.net.AGCResponse;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.grs.LocationNlpGrsHelper;
import com.huawei.location.lite.common.http.HttpClientEx;
import com.huawei.location.lite.common.http.HttpConfigInfo;
import com.huawei.location.lite.common.http.exception.OnErrorException;
import com.huawei.location.lite.common.http.exception.OnFailureException;
import com.huawei.location.lite.common.http.request.BaseRequest;
import com.huawei.location.lite.common.http.request.HeadBuilder;
import com.huawei.location.lite.common.http.request.RequestJsonBody;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.security.LocationSecurityManager;
import com.huawei.location.lite.common.util.APKUtil;
import com.huawei.location.lite.common.util.PreferencesHelper;
import java.util.UUID;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class AGCManager {
    private static final byte[] SYNC_LOCK = new byte[0];
    private static volatile AGCManager instance;
    private yn mAgcInfo;
    private com.huawei.location.lite.common.agc.net.yn mOnlineAgcService;
    private final PreferencesHelper preferencesHelper = new PreferencesHelper("AGCInfo");

    private AGCManager() {
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x012f A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private yn asyncGetAgcInfo() {
        String string;
        StringBuilder sb;
        String message;
        if (this.mOnlineAgcService == null) {
            this.mOnlineAgcService = new com.huawei.location.lite.common.agc.net.yn();
        }
        this.mOnlineAgcService.getClass();
        LogConsole.i("OnlineAgcService", "getOnlineAgcInfo");
        AGCResponse aGCResponse = new AGCResponse();
        try {
            RequestJsonBody requestJsonBodyBuild = new RequestJsonBody.Builder().add("fingerprint", APKUtil.getSignatureForPkgName(ContextUtil.getContext().getPackageName())).build();
            String string2 = UUID.randomUUID().toString();
            String grsHostAddress = LocationNlpGrsHelper.getGrsHostAddress(BuildConfig.LIBRARY_PACKAGE_NAME);
            if (TextUtils.isEmpty(grsHostAddress)) {
                LogConsole.e("OnlineAgcService", "grsHostAddress is null");
            } else {
                AGCResponse aGCResponse2 = (AGCResponse) new HttpClientEx(ContextUtil.getContext(), new HttpConfigInfo.Builder().setNeedCheckAGC(false).build()).newSubmit(new BaseRequest.Builder("/location/v1/getToken").setBaseUrl(grsHostAddress).setHeads(new HeadBuilder(string2).setPackageName(ContextUtil.getContext().getPackageName())).setBody(requestJsonBodyBuild).builder()).execute(AGCResponse.class);
                try {
                    LogConsole.i("OnlineAgcService", "doHttp, response code is " + aGCResponse2.getApiCode());
                    aGCResponse = aGCResponse2;
                } catch (OnErrorException e) {
                    e = e;
                    aGCResponse = aGCResponse2;
                    sb = new StringBuilder();
                    sb.append("doHttp, OnErrorException: code is ");
                    sb.append(e.getApiCode());
                    sb.append(", msg is ");
                    message = e.getApiMsg();
                    sb.append(message);
                    string = sb.toString();
                    LogConsole.e("OnlineAgcService", string);
                    if (aGCResponse.isSuccess()) {
                    }
                } catch (OnFailureException e2) {
                    e = e2;
                    aGCResponse = aGCResponse2;
                    sb = new StringBuilder();
                    sb.append("doHttp, OnFailureException: code is ");
                    sb.append(e.getErrorCode());
                    sb.append(", msg is ");
                    message = e.getMessage();
                    sb.append(message);
                    string = sb.toString();
                    LogConsole.e("OnlineAgcService", string);
                    if (aGCResponse.isSuccess()) {
                    }
                } catch (Exception unused) {
                    aGCResponse = aGCResponse2;
                    string = "unknown exception";
                    LogConsole.e("OnlineAgcService", string);
                    if (aGCResponse.isSuccess()) {
                    }
                }
            }
        } catch (OnErrorException e3) {
            e = e3;
        } catch (OnFailureException e4) {
            e = e4;
        } catch (Exception unused2) {
        }
        if (aGCResponse.isSuccess()) {
            return null;
        }
        LogConsole.i("OnlineAgcService", "getOnlineAgcInfo success,save to cache");
        yn ynVar = new yn();
        ynVar.yn(aGCResponse.getExpireTime());
        ynVar.yn(aGCResponse.getToken());
        getInstance().setAgcCache(ynVar);
        return ynVar;
    }

    public static AGCManager getInstance() {
        if (instance == null) {
            synchronized (SYNC_LOCK) {
                try {
                    if (instance == null) {
                        instance = new AGCManager();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public boolean checkAgc() {
        return getInstance().getAgcInfo() != null;
    }

    public yn getAgcInfo() {
        String str;
        if (this.mAgcInfo == null || System.currentTimeMillis() > this.mAgcInfo.yn()) {
            yn ynVarAsyncGetAgcInfo = asyncGetAgcInfo();
            this.mAgcInfo = ynVarAsyncGetAgcInfo;
            if (ynVarAsyncGetAgcInfo == null) {
                long j = this.preferencesHelper.getLong("ExpireTime");
                String string = this.preferencesHelper.getString("Token");
                if (System.currentTimeMillis() > j || TextUtils.isEmpty(string)) {
                    return null;
                }
                LogConsole.i("AGCManager", "use agcInfo from sp");
                LocationSecurityManager locationSecurityManager = new LocationSecurityManager(3);
                yn ynVar = new yn();
                this.mAgcInfo = ynVar;
                ynVar.yn(locationSecurityManager.decrypt(string, "AGC_INFO"));
                this.mAgcInfo.yn(j);
                return this.mAgcInfo;
            }
            str = "use agcInfo from online";
        } else {
            str = "use cache agcInfo";
        }
        LogConsole.i("AGCManager", str);
        return this.mAgcInfo;
    }

    public String getAppId() {
        try {
            AGConnectServicesConfig aGConnectServicesConfigFromContext = AGConnectServicesConfig.fromContext(ContextUtil.getContext());
            return TextUtils.isEmpty(aGConnectServicesConfigFromContext.getString("client/app_id")) ? "" : aGConnectServicesConfigFromContext.getString("client/app_id");
        } catch (Exception unused) {
            LogConsole.e("AGCManager", "get agc appId by exception");
            return "";
        }
    }

    public synchronized void notifyAkChange() {
        this.mAgcInfo = null;
    }

    public void setAgcCache(yn ynVar) {
        this.mAgcInfo = ynVar;
        this.preferencesHelper.saveString("Token", new LocationSecurityManager(3).encrypt(ynVar.Vw(), "AGC_INFO"));
        this.preferencesHelper.saveLong("ExpireTime", ynVar.yn());
    }
}
