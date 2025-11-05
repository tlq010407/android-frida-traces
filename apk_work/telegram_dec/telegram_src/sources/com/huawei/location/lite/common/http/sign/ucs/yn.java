package com.huawei.location.lite.common.http.sign.ucs;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.location.BuildConfig;
import com.huawei.location.lite.common.agc.AGCManager;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.grs.LocationNlpGrsHelper;
import com.huawei.location.lite.common.http.exception.AuthException;
import com.huawei.location.lite.common.http.exception.ErrorCode;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.report.Tracker;
import com.huawei.location.lite.common.util.CanonicalQueryString;
import com.huawei.location.lite.common.util.PreferencesHelper;
import com.huawei.location.lite.common.util.country.CountryCodeUtil;
import com.huawei.wisesecurity.kfs.ha.message.ReportMsgBuilder;
import com.huawei.wisesecurity.ucs.common.exception.UcsCryptoException;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.ILogUcs;
import com.huawei.wisesecurity.ucs.credential.Credential;
import com.huawei.wisesecurity.ucs.credential.CredentialClient;
import com.huawei.wisesecurity.ucs.credential.crypto.signer.CredentialSignAlg;
import com.huawei.wisesecurity.ucs.credential.crypto.signer.CredentialSigner;
import com.huawei.wisesecurity.ucs.credential.outer.GrsCapability;
import com.huawei.wisesecurity.ucs.credential.outer.HACapability;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkRequest;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkResponse;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    private CredentialClient Vw;
    private Credential yn;

    private static class E5 {
        private static final yn yn = new yn();
    }

    private static class FB implements HACapability {
        private FB() {
        }

        @Override // com.huawei.wisesecurity.ucs.credential.outer.HACapability
        public void onEvent(Context context, String str, ReportMsgBuilder reportMsgBuilder) {
            Tracker.getInstance().onEvent(1, str, reportMsgBuilder.build());
        }
    }

    private static class LW implements ILogUcs {
        private LW() {
        }

        @Override // com.huawei.wisesecurity.ucs.common.log.ILogUcs
        public void d(String str, String str2) {
            LogConsole.d(str, str2);
        }

        @Override // com.huawei.wisesecurity.ucs.common.log.ILogUcs
        public void e(String str, String str2) {
            LogConsole.e(str, str2);
        }

        @Override // com.huawei.wisesecurity.ucs.common.log.ILogUcs
        public void i(String str, String str2) {
            LogConsole.i(str, str2);
        }

        @Override // com.huawei.wisesecurity.ucs.common.log.ILogUcs
        public void w(String str, String str2) {
            LogConsole.w(str, str2);
        }
    }

    private static class Vw implements GrsCapability {
        private Vw() {
        }

        @Override // com.huawei.wisesecurity.ucs.credential.outer.GrsCapability
        public String synGetGrsUrl(String str, String str2) {
            LogConsole.d("UCSSignHelper", "GrsCapabilityImpl synGetGrsUrl" + str);
            return LocationNlpGrsHelper.getGrsHostAddress(CountryCodeUtil.getLocationCountryCode(), str, str2);
        }
    }

    private static class dC implements NetworkCapability {
        private dC() {
        }

        private NetworkResponse yn(Request request) throws IOException {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            try {
                Response responseExecute = builder.callTimeout(10000L, timeUnit).connectTimeout(10000L, timeUnit).retryOnConnectionFailure(false).build().newCall(request).execute();
                NetworkResponse networkResponse = new NetworkResponse();
                networkResponse.setCode(responseExecute.code());
                networkResponse.setHeaders(responseExecute.headers().toMultimap());
                if (responseExecute.body() != null) {
                    networkResponse.setBody(responseExecute.body().string());
                }
                return networkResponse;
            } catch (IOException e) {
                LogConsole.e("UCSSignHelper", "UCS http failed by exception");
                throw e;
            }
        }

        @Override // com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability
        public NetworkResponse get(NetworkRequest networkRequest) {
            LogConsole.d("UCSSignHelper", "NetworkCapabilityImpl ucs http getUrl：" + networkRequest.getUrl());
            return yn(new Request.Builder().url(networkRequest.getUrl()).headers(Headers.of(networkRequest.getHeaders())).build());
        }

        @Override // com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability
        public void initConfig(int i, int i2) {
        }

        @Override // com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability
        public NetworkResponse post(NetworkRequest networkRequest) {
            LogConsole.d("UCSSignHelper", "NetworkCapabilityImpl ucs http postUrl：" + networkRequest.getUrl());
            return yn(new Request.Builder().url(networkRequest.getUrl()).headers(Headers.of(networkRequest.getHeaders())).post(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), networkRequest.getBody())).build());
        }
    }

    private yn() {
    }

    public static yn yn() {
        return E5.yn;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0097 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean yn(Context context) {
        String str;
        Credential credentialGenCredentialFromString;
        Credential credential = this.yn;
        if (credential != null && !yn(Long.valueOf(credential.getExpireTime()))) {
            return true;
        }
        LogConsole.i("UCSSignHelper", "init credential from sp");
        PreferencesHelper preferencesHelper = new PreferencesHelper("location_credential");
        long j = preferencesHelper.getLong("credentialExpiredTime");
        Credential credentialApplyCredential = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        if (j <= 0 || yn(Long.valueOf(j))) {
            str = "sp credential is expired,credentialExpiredTime:" + j;
        } else {
            String string = preferencesHelper.getString("credentialCache");
            if (TextUtils.isEmpty(string)) {
                LogConsole.e("UCSSignHelper", "sp credential is null");
                credentialGenCredentialFromString = null;
                this.yn = credentialGenCredentialFromString;
                if (credentialGenCredentialFromString != null) {
                    return true;
                }
                LogConsole.i("UCSSignHelper", "init credential from network");
                synchronized (this) {
                    try {
                        CredentialClient credentialClientBuild = new CredentialClient.Builder().context(context).serCountry(CountryCodeUtil.getLocationCountryCode()).networkRetryTime(1).networkTimeOut(10000).appId(AGCManager.getInstance().getAppId()).grsCapability(new Vw()).haCapability(new FB()).networkCapability(new dC()).logInstance(new LW()).build();
                        this.Vw = credentialClientBuild;
                        credentialApplyCredential = credentialClientBuild.applyCredential(BuildConfig.LIBRARY_PACKAGE_NAME);
                    } catch (UcsException e) {
                        LogConsole.e("UCSSignHelper", "init credential form network failed :" + e.errorCode.getCode());
                    }
                }
                this.yn = credentialApplyCredential;
                if (credentialApplyCredential == null) {
                    return false;
                }
                AGCManager.getInstance().notifyAkChange();
                preferencesHelper.saveLong("credentialExpiredTime", this.yn.getExpireTime());
                preferencesHelper.saveString("credentialCache", this.yn.toString());
                LogConsole.i("UCSSignHelper", "Credential init success, expire time is :" + this.yn.getExpireTime());
                return true;
            }
            try {
                CredentialClient credentialClientBuild2 = new CredentialClient.Builder().context(context).build();
                this.Vw = credentialClientBuild2;
                credentialGenCredentialFromString = credentialClientBuild2.genCredentialFromString(string);
            } catch (UcsException e2) {
                str = "init credential form sp failed :" + e2.errorCode.getCode();
            }
            this.yn = credentialGenCredentialFromString;
            if (credentialGenCredentialFromString != null) {
            }
        }
        LogConsole.e("UCSSignHelper", str);
        credentialGenCredentialFromString = null;
        this.yn = credentialGenCredentialFromString;
        if (credentialGenCredentialFromString != null) {
        }
    }

    private boolean yn(Long l) {
        return System.currentTimeMillis() > l.longValue() || l.longValue() - System.currentTimeMillis() < 3600000;
    }

    public void Vw() {
        LogConsole.i("UCSSignHelper", "reApplyCredential");
        this.yn = null;
        PreferencesHelper preferencesHelper = new PreferencesHelper("location_credential");
        preferencesHelper.remove("credentialExpiredTime");
        preferencesHelper.remove("credentialCache");
        yn(ContextUtil.getContext());
    }

    public String yn(Context context, com.huawei.location.lite.common.http.sign.Vw vw) throws UcsCryptoException, UcsException, AuthException {
        String str;
        LogConsole.d("UCSSignHelper", "begin to sign");
        if (!yn(context)) {
            LogConsole.e("UCSSignHelper", "Credential init fail,sign fail");
            throw new AuthException(ErrorCode.valueOf(41));
        }
        Credential credential = this.yn;
        if (credential == null || yn(Long.valueOf(credential.getExpireTime()))) {
            str = "credential is not ready";
        } else {
            try {
                URL url = new URL(vw.dC());
                CredentialSigner credentialSignerBuild = new CredentialSigner.Builder().withCredential(this.yn).withAlg(CredentialSignAlg.HMAC_SHA256).withCredentialClient(this.Vw).build();
                String string = Long.toString(System.currentTimeMillis());
                String string2 = new CanonicalQueryString(url.getQuery()).toString();
                Locale locale = Locale.ENGLISH;
                String str2 = String.format(locale, "%s&%s&%s&%s&ak=%s&timestamp=%s", vw.Vw(), url.getPath(), string2, vw.FB(), this.yn.getAccessKey(), string);
                if (!TextUtils.isEmpty(vw.yn()[0])) {
                    str2 = String.format(locale, "%s&%s", str2, vw.yn()[0]);
                }
                String strSignBase64 = credentialSignerBuild.getSignHandler().from(str2).signBase64();
                LogConsole.i("UCSSignHelper", "sign successful");
                String str3 = String.format(locale, "EXT-AUTH-CLOUDSOA-HMAC-SHA256 appid=%s,timestamp=%s,signature=%s,ak=%s", "hmslocation", string, strSignBase64, this.yn.getAccessKey());
                return !TextUtils.isEmpty(vw.yn()[1]) ? String.format(locale, "%s,signedHeaders=%s", str3, vw.yn()[1]) : str3;
            } catch (MalformedURLException unused) {
                str = "MalformedURLException";
            }
        }
        LogConsole.e("UCSSignHelper", str);
        return "";
    }
}
