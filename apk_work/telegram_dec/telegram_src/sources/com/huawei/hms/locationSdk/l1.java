package com.huawei.hms.locationSdk;

import android.os.Parcelable;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.location.router.entity.StatusInfo;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
class l1 implements ResponseErrorCode {
    private final int a;
    private final int b;
    private final String c;
    private final String d;

    l1(StatusInfo statusInfo, String str) {
        this.a = statusInfo.getStatusCode();
        this.b = statusInfo.getErrorCode();
        this.c = statusInfo.getErrorMessage();
        this.d = str;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public int getErrorCode() {
        return this.b;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public String getErrorReason() {
        return this.c;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public Parcelable getParcelable() {
        return null;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public String getResolution() {
        return null;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public int getStatusCode() {
        return this.a;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public String getTransactionId() {
        return this.d;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public boolean hasResolution() {
        return false;
    }
}
