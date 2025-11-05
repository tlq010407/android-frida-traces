package com.huawei.location.lite.common.http.sign.tss;

import android.text.TextUtils;
import com.huawei.hms.config.Server;
import com.huawei.hms.location.BuildConfig;
import com.huawei.hms.tss.inner.TssInnerAPI;
import com.huawei.hms.tss.inner.TssInnerClient;
import com.huawei.hms.tss.inner.entity.GetCertificationKeyReq;
import com.huawei.hms.tss.inner.entity.GetCertifiedCredentialReq;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.http.exception.AuthException;
import com.huawei.location.lite.common.http.exception.ErrorCode;
import com.huawei.location.lite.common.http.sign.Vw;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.CanonicalQueryString;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.lite.common.util.PreferencesHelper;
import com.huawei.secure.android.common.encrypt.hash.HMACSHA256;
import com.huawei.secure.android.common.util.HexUtil;
import com.huawei.secure.android.common.util.SafeBase64;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import org.telegram.messenger.R;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TssSignHelper {
    private static final byte[] SYNC_LOCK = new byte[0];
    private static volatile TssSignHelper instance;
    private ErrorCode errorCode = ErrorCode.valueOf(0);
    private CertifiedCredential mCertifiedCredential;
    private TssInnerAPI tssInnerAPI;

    private TssSignHelper() {
        init();
    }

    private String encryptAuthInfo(String str, String str2) {
        try {
            Charset charset = StandardCharsets.UTF_8;
            String str3 = new String(SafeBase64.encode(HexUtil.hexStr2ByteArray(HMACSHA256.hmacSHA256Encrypt(str, str2.getBytes(charset))), 2), charset);
            LogConsole.d("TssSignHelper", "encryptAuthInfo success ");
            return str3;
        } catch (Exception unused) {
            LogConsole.e("TssSignHelper", "encode Exception", true);
            return "";
        }
    }

    private String generateSignedString(Vw vw) throws AuthException {
        String str;
        try {
            URL url = new URL(vw.dC());
            String string = new CanonicalQueryString(url.getQuery()).toString();
            String string2 = Long.toString(System.currentTimeMillis());
            if (url.getPath().startsWith("/map/")) {
                LogConsole.i("TssSignHelper", "request site kit server signature");
                str = String.format(Locale.ENGLISH, "%s&%s&%s&%s&appid=%s&timestamp=%s", vw.Vw(), url.getPath(), string, vw.FB(), "hmslocation", string2);
            } else {
                LogConsole.i("TssSignHelper", "request location kit server signature");
                Locale locale = Locale.ENGLISH;
                str = String.format(locale, "%s&%s&%s&%s&ak=%s&timestamp=%s", vw.Vw(), url.getPath(), string, vw.FB(), this.mCertifiedCredential.getAccessKey(), string2);
                if (!TextUtils.isEmpty(vw.yn()[0])) {
                    str = String.format(locale, "%s&%s", str, vw.yn()[0]);
                }
            }
            String strEncryptAuthInfo = encryptAuthInfo(str, this.mCertifiedCredential.getRawSecretKey());
            Locale locale2 = Locale.ENGLISH;
            String str2 = String.format(locale2, "CLOUDSOA-HMAC-SHA256 appid=%s,timestamp=%s,signature=%s,ak=%s", "hmslocation", string2, strEncryptAuthInfo, this.mCertifiedCredential.getAccessKey());
            return !TextUtils.isEmpty(vw.yn()[1]) ? String.format(locale2, "%s,signedHeaders=%s", str2, vw.yn()[1]) : str2;
        } catch (MalformedURLException unused) {
            LogConsole.e("TssSignHelper", "hostUrl is illeagel", true);
            throw new AuthException(ErrorCode.valueOf(10309));
        }
    }

    public static TssSignHelper getInstance() {
        if (instance == null) {
            synchronized (SYNC_LOCK) {
                try {
                    if (instance == null) {
                        instance = new TssSignHelper();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    private void getRawCertificationKey(String str) throws InterruptedException {
        LogConsole.i("TssSignHelper", "begin to get raw certificationKey");
        if (!this.mCertifiedCredential.isEncryptedCredentialPrepared()) {
            LogConsole.e("TssSignHelper", "EncryptedCertified is not Prepared");
            this.errorCode = ErrorCode.valueOf(105);
            return;
        }
        GetCertificationKeyReq getCertificationKeyReq = new GetCertificationKeyReq();
        getCertificationKeyReq.setKek(this.mCertifiedCredential.getKek());
        getCertificationKeyReq.setDataKey(this.mCertifiedCredential.getDataKey());
        getCertificationKeyReq.setSecretKey(this.mCertifiedCredential.getSecretKey());
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.tssInnerAPI.getCertificationKey(Server.getHmsAppId(), str, getCertificationKeyReq, new TssSignHelper$$ExternalSyntheticLambda0(this, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            LogConsole.e("TssSignHelper", "getCertificationKey InterruptedException");
        }
    }

    private void getSecretKey(String str) throws InterruptedException {
        GetCertifiedCredentialReq getCertifiedCredentialReq = new GetCertifiedCredentialReq();
        getCertifiedCredentialReq.setPackageName(BuildConfig.LIBRARY_PACKAGE_NAME);
        LogConsole.i("TssSignHelper", "getCertifiedCredential:start");
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.tssInnerAPI.getCertifiedCredential(Server.getHmsAppId(), str, getCertifiedCredentialReq, new TssSignHelper$$ExternalSyntheticLambda0(this, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            LogConsole.e("TssSignHelper", "InterruptedException");
        }
        getRawCertificationKey(str);
    }

    private void init() {
        this.tssInnerAPI = TssInnerClient.getTssInnerApi(ContextUtil.getHMSContext(), "TssSignHelper");
        String string = new PreferencesHelper("location_credential").getString("location_credential");
        if (TextUtils.isEmpty(string)) {
            return;
        }
        LogConsole.i("TssSignHelper", "local LocationCredential is not empty");
        try {
            this.mCertifiedCredential = (CertifiedCredential) GsonUtil.getInstance().fromJson(string, CertifiedCredential.class);
        } catch (Exception unused) {
            LogConsole.e("TssSignHelper", "json parse failed", true);
        }
    }

    private boolean isNeedUpdate(Long l) {
        return System.currentTimeMillis() > l.longValue() || l.longValue() - System.currentTimeMillis() < 300000;
    }

    private boolean isSignMessageReqValid(Vw vw) {
        if (vw != null && !TextUtils.isEmpty(vw.Vw()) && !TextUtils.isEmpty(vw.dC()) && !TextUtils.isEmpty(vw.LW())) {
            return true;
        }
        LogConsole.e("TssSignHelper", "SignRequest is  invalid");
        return false;
    }

    public void clearLocalCertifiedCredential() {
        synchronized (SYNC_LOCK) {
            try {
                LogConsole.d("TssSignHelper", "clearLocalCertifiedCredential");
                CertifiedCredential certifiedCredential = this.mCertifiedCredential;
                if (certifiedCredential != null) {
                    certifiedCredential.clearValues();
                }
                new PreferencesHelper("location_credential").remove("location_credential");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String getSignature(Vw vw) {
        String strGenerateSignedString;
        synchronized (SYNC_LOCK) {
            try {
                if (!isSignMessageReqValid(vw)) {
                    LogConsole.e("TssSignHelper", "sign message request is invalid");
                    throw new AuthException(ErrorCode.valueOf(10309));
                }
                String strLW = vw.LW();
                LogConsole.i("TssSignHelper", "begin to signature, transId = " + strLW);
                int i = 0;
                while (true) {
                    if (i >= 3) {
                        break;
                    }
                    LogConsole.i("TssSignHelper", "get certified credential times:" + i);
                    CertifiedCredential certifiedCredential = this.mCertifiedCredential;
                    if (certifiedCredential == null || isNeedUpdate(certifiedCredential.getExpireTime())) {
                        LogConsole.i("TssSignHelper", "need to request certifiedCredential");
                        this.mCertifiedCredential = new CertifiedCredential();
                        getSecretKey(strLW);
                    }
                    if (TextUtils.isEmpty(this.mCertifiedCredential.getRawSecretKey())) {
                        LogConsole.i("TssSignHelper", "get RawSecretKey from sp, to decrypted");
                        getRawCertificationKey(strLW);
                    }
                    if (this.mCertifiedCredential.isInitOk()) {
                        LogConsole.e("TssSignHelper", "mCertifiedCredential init ok");
                        break;
                    }
                    i++;
                }
                if (this.errorCode.code != 0) {
                    LogConsole.e("TssSignHelper", "get sk, throw error code");
                    throw new AuthException(this.errorCode);
                }
                if (!this.mCertifiedCredential.isInitOk()) {
                    LogConsole.e("TssSignHelper", "mCertifiedCredential init failed");
                    this.mCertifiedCredential.clearValues();
                    throw new AuthException(ErrorCode.valueOf(R.styleable.AppCompatTheme_viewInflaterClass));
                }
                strGenerateSignedString = generateSignedString(vw);
            } catch (Throwable th) {
                throw th;
            }
        }
        return strGenerateSignedString;
    }
}
