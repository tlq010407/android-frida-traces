package com.huawei.location.lite.common.http.sign.tss;

import android.text.TextUtils;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class CertifiedCredential {
    private String accessKey;
    private String dataKey;
    private Long expireTime = 0L;
    private String kek;
    private String rawSecretKey;
    private String secretKey;

    public void clearValues() {
        this.accessKey = null;
        this.kek = null;
        this.rawSecretKey = null;
        this.secretKey = null;
        this.expireTime = 0L;
        this.dataKey = null;
    }

    public String getAccessKey() {
        return this.accessKey;
    }

    public String getDataKey() {
        return this.dataKey;
    }

    public Long getExpireTime() {
        return this.expireTime;
    }

    public String getKek() {
        return this.kek;
    }

    public String getRawSecretKey() {
        return this.rawSecretKey;
    }

    public String getSecretKey() {
        return this.secretKey;
    }

    public boolean isEncryptedCredentialPrepared() {
        return (TextUtils.isEmpty(getKek()) || TextUtils.isEmpty(getDataKey()) || TextUtils.isEmpty(getSecretKey())) ? false : true;
    }

    public boolean isInitOk() {
        return !TextUtils.isEmpty(getRawSecretKey());
    }

    public void setAccessKey(String str) {
        this.accessKey = str;
    }

    public void setDataKey(String str) {
        this.dataKey = str;
    }

    public void setExpireTime(Long l) {
        this.expireTime = l;
    }

    public void setKek(String str) {
        this.kek = str;
    }

    public void setRawSecretKey(String str) {
        this.rawSecretKey = str;
    }

    public void setSecretKey(String str) {
        this.secretKey = str;
    }
}
