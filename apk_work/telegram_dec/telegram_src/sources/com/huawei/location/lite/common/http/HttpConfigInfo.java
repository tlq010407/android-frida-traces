package com.huawei.location.lite.common.http;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class HttpConfigInfo implements Parcelable {
    public static final Parcelable.Creator<HttpConfigInfo> CREATOR = new Parcelable.Creator() { // from class: com.huawei.location.lite.common.http.HttpConfigInfo.1
        @Override // android.os.Parcelable.Creator
        public HttpConfigInfo createFromParcel(Parcel parcel) {
            return new HttpConfigInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public HttpConfigInfo[] newArray(int i) {
            return new HttpConfigInfo[i];
        }
    };
    private boolean isBinderProcess;
    private boolean isNeedCheckAGC;
    private boolean isNeedCheckTssAuth;
    private boolean isNeedCheckUcsAuth;
    private boolean isNeedInterceptor;

    public static final class Builder {
        private boolean isNeedInterceptor = true;
        private boolean mNeedCheckAGC = true;
        private boolean mNeedCheckUcsAuth = true;
        private boolean mNeedCheckTssAuth = true;
        private boolean mNeedBinderProcess = false;

        public HttpConfigInfo build() {
            return new HttpConfigInfo(this);
        }

        public Builder setNeedCheckAGC(boolean z) {
            this.mNeedCheckAGC = z;
            return this;
        }

        public Builder setNeedCheckTssAuth(boolean z) {
            this.mNeedCheckTssAuth = z;
            return this;
        }

        public Builder setNeedCheckUcsAuth(boolean z) {
            this.mNeedCheckUcsAuth = z;
            return this;
        }
    }

    protected HttpConfigInfo(Parcel parcel) {
        this.isNeedInterceptor = parcel.readByte() != 0;
        this.isNeedCheckAGC = parcel.readByte() != 0;
        this.isNeedCheckUcsAuth = parcel.readByte() != 0;
        this.isNeedCheckTssAuth = parcel.readByte() != 0;
        this.isBinderProcess = parcel.readByte() != 0;
    }

    public HttpConfigInfo(Builder builder) {
        this.isNeedInterceptor = builder.isNeedInterceptor;
        this.isNeedCheckAGC = builder.mNeedCheckAGC;
        this.isNeedCheckTssAuth = builder.mNeedCheckTssAuth;
        this.isNeedCheckUcsAuth = builder.mNeedCheckUcsAuth;
        this.isBinderProcess = builder.mNeedBinderProcess;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean isBinderProcess() {
        return this.isBinderProcess;
    }

    public boolean isNeedCheckAGC() {
        return this.isNeedCheckAGC;
    }

    public boolean isNeedCheckTssAuth() {
        return this.isNeedCheckTssAuth;
    }

    public boolean isNeedCheckUcsAuth() {
        return this.isNeedCheckUcsAuth;
    }

    public boolean isNeedInterceptor() {
        return this.isNeedInterceptor;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.isNeedInterceptor ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isNeedCheckAGC ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isNeedCheckUcsAuth ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isNeedCheckTssAuth ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isBinderProcess ? (byte) 1 : (byte) 0);
    }
}
