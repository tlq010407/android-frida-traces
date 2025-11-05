package com.huawei.location.lite.common.agc;

import com.google.gson.annotations.SerializedName;
import com.huawei.wisesecurity.ucs.credential.Credential;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {

    @SerializedName("token")
    private String Vw;

    @SerializedName(Credential.EXPIRE_TIME)
    private long yn;

    public String Vw() {
        return this.Vw;
    }

    public long yn() {
        return this.yn;
    }

    public void yn(long j) {
        this.yn = j;
    }

    public void yn(String str) {
        this.Vw = str;
    }
}
