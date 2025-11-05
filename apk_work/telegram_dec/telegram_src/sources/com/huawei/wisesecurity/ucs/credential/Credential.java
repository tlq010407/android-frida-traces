package com.huawei.wisesecurity.ucs.credential;

import android.content.Context;
import com.huawei.wisesecurity.kfs.crypto.codec.Decoder;
import com.huawei.wisesecurity.kfs.exception.CodecException;
import com.huawei.wisesecurity.kfs.exception.KfsValidationException;
import com.huawei.wisesecurity.kfs.validation.KfsValidator;
import com.huawei.wisesecurity.kfs.validation.constrains.KfsLongRange;
import com.huawei.wisesecurity.kfs.validation.constrains.KfsStringNotEmpty;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.exception.UcsParamException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.credential.entity.AccessKey;
import com.huawei.wisesecurity.ucs.credential.entity.KeyEncryptKey;
import com.huawei.wisesecurity.ucs.credential.nativelib.UcsLib;
import com.huawei.wisesecurity.ucs_credential.e;
import com.huawei.wisesecurity.ucs_credential.t;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Credential {
    public static final String AK = "accessKey";
    public static final String DK = "dataKey";
    public static final byte[] EMPTY_BYTES = new byte[0];
    public static final String EXPIRE_TIME = "expireTime";
    public static final String KEK = "kek";
    public static final String SK = "secretKey";
    public static final String TAG = "Credential";

    @KfsStringNotEmpty
    public String accessKey;
    public AccessKey ak;

    @KfsStringNotEmpty
    public String dataKey;

    @KfsLongRange
    public long expireTime;
    public KeyEncryptKey kek;

    @KfsStringNotEmpty
    public String rawKek;

    @KfsStringNotEmpty
    public String secretKey;

    private byte[] base64DecodeForNative(String str) {
        try {
            return Decoder.BASE64.decode(str);
        } catch (CodecException unused) {
            return EMPTY_BYTES;
        }
    }

    public static Credential fromString(Context context, String str, t tVar) throws UcsException {
        try {
            Credential credential = new Credential();
            JSONObject jSONObject = new JSONObject(str);
            credential.secretKey = jSONObject.optString(SK);
            credential.dataKey = jSONObject.optString(DK);
            credential.accessKey = jSONObject.optString(AK);
            credential.rawKek = jSONObject.optString(KEK);
            credential.expireTime = jSONObject.optLong(EXPIRE_TIME);
            credential.kek = KeyEncryptKey.fromString(context, credential.rawKek);
            credential.checkParam();
            credential.ak = AccessKey.fromString(credential.accessKey);
            credential.getAppPkgName();
            tVar.getClass();
            credential.getAkskVersion();
            credential.getKekVersion();
            if (credential.ak.hasAkskVersion()) {
                UcsLib.checkNativeLibrary();
                if (!UcsLib.checkPkgNameCertFP(context, credential.ak.getAppPkgName(), credential.ak.getAppCertFP())) {
                    LogUcs.e(TAG, "check  AppPkgName appCertFP fail", new Object[0]);
                    throw new UcsException(1023L, "check  AppPkgName appCertFP fail");
                }
            }
            e.a(credential).b(credential, context);
            return credential;
        } catch (UcsException e) {
            LogUcs.e(TAG, "parse credentialStr get UCS exception : errorCode : {0} errorMsg : {1}", Long.valueOf(e.getErrorCode()), e.getMessage());
            throw e;
        } catch (JSONException e2) {
            LogUcs.e(TAG, "parse credentialStr get json exception : {0}", e2.getMessage());
            throw new UcsException(1002L, "parse credentialStr get json exception : " + e2.getMessage());
        } catch (Exception e3) {
            String str2 = "parse credentialStr get exception : " + e3.getMessage();
            LogUcs.e(TAG, str2, new Object[0]);
            throw new UcsException(2001L, str2);
        }
    }

    public void checkParam() throws UcsException {
        try {
            KfsValidator.validate(this);
        } catch (KfsValidationException e) {
            throw new UcsParamException("credential get param exception : " + e.getMessage());
        }
    }

    public String getAccessKey() {
        return this.accessKey;
    }

    public int getAkskVersion() {
        return this.ak.getAkskVersion();
    }

    public int getAlg() {
        return this.kek.getAlg();
    }

    public String getAppCertFP() {
        return this.ak.getAppCertFP();
    }

    public String getAppPkgName() {
        return this.ak.getAppPkgName();
    }

    public String getDataKey() {
        return this.dataKey;
    }

    public byte[] getDataKeyBytes() {
        return base64DecodeForNative(this.dataKey);
    }

    public long getExpireTime() {
        return this.expireTime;
    }

    public int getKekAlg() {
        return this.kek.getKekAlg();
    }

    public byte[] getKekBytes() {
        return base64DecodeForNative(this.kek.getKey());
    }

    public String getKekString() {
        return this.kek.getKey();
    }

    public int getKekVersion() {
        return this.kek.getVersion();
    }

    public String getRawKek() {
        return this.rawKek;
    }

    public String getSecretKey() {
        return this.secretKey;
    }

    public byte[] getSecretKeyBytes() {
        return base64DecodeForNative(this.secretKey);
    }

    public String toString() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(SK, this.secretKey);
            jSONObject.put(AK, this.accessKey);
            jSONObject.put(DK, this.dataKey);
            jSONObject.put(KEK, this.rawKek);
            jSONObject.put(EXPIRE_TIME, this.expireTime);
            return jSONObject.toString();
        } catch (JSONException e) {
            LogUcs.e(TAG, "Credential toString exception : {0}", e.getMessage());
            return "";
        }
    }
}
