package com.huawei.location.lite.common.http.response;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ResponseInfo implements Parcelable {
    public static final Parcelable.Creator<ResponseInfo> CREATOR = new yn();
    public static final int ERROR_EXCEPTION_LEVEL = 100;
    public static final int FAILURE_EXCEPTION_LEVEL = 101;
    private int errorCode;
    private int errorLevel;
    private String msg;
    private byte[] responseBytes;
    private String responseString;

    static class yn implements Parcelable.Creator {
        yn() {
        }

        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new ResponseInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new ResponseInfo[i];
        }
    }

    public ResponseInfo() {
    }

    protected ResponseInfo(Parcel parcel) {
        this.errorLevel = parcel.readInt();
        this.errorCode = parcel.readInt();
        this.msg = parcel.readString();
        this.responseString = parcel.readString();
        this.responseBytes = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public int getErrorLevel() {
        return this.errorLevel;
    }

    public String getMsg() {
        return this.msg;
    }

    public byte[] getResponseBytes() {
        byte[] bArr = this.responseBytes;
        return bArr == null ? new byte[0] : (byte[]) bArr.clone();
    }

    public String getResponseString() {
        return this.responseString;
    }

    public void setErrorCode(int i) {
        this.errorCode = i;
    }

    public void setErrorLevel(int i) {
        this.errorLevel = i;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResponseBytes(byte[] bArr) {
        if (bArr != null) {
            this.responseBytes = (byte[]) bArr.clone();
        }
    }

    public void setResponseString(String str) {
        this.responseString = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.errorLevel);
        parcel.writeInt(this.errorCode);
        parcel.writeString(this.msg);
        parcel.writeString(this.responseString);
        parcel.writeByteArray(this.responseBytes);
    }
}
