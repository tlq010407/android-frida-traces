package com.huawei.location.lite.common.http.request;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hms.location.BuildConfig;
import com.huawei.location.lite.common.grs.LocationNlpGrsHelper;
import okhttp3.Headers;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class BaseRequest implements Parcelable {
    public static final Parcelable.Creator<BaseRequest> CREATOR = new Parcelable.Creator() { // from class: com.huawei.location.lite.common.http.request.BaseRequest.1
        @Override // android.os.Parcelable.Creator
        public BaseRequest createFromParcel(Parcel parcel) {
            return new BaseRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BaseRequest[] newArray(int i) {
            return new BaseRequest[i];
        }
    };
    public static final String METHOD_GET = "GET";
    public static final String METHOD_POST = "POST";
    private String baseUrl;
    private byte[] body;
    private String contentType;
    private HeadBuilder heads;
    private String method;
    private String path;

    public static final class Builder {
        private String baseUrl;
        private byte[] body;
        private String contentType;
        private HeadBuilder heads;
        private String method = BaseRequest.METHOD_POST;
        private String path;

        public Builder(String str) {
            this.path = str;
        }

        public BaseRequest builder() {
            if (TextUtils.isEmpty(this.baseUrl)) {
                this.baseUrl = LocationNlpGrsHelper.getGrsHostAddress(BuildConfig.LIBRARY_PACKAGE_NAME);
            }
            return new BaseRequest(this);
        }

        public Builder setBaseUrl(String str) {
            this.baseUrl = str;
            return this;
        }

        public Builder setBody(RequestJsonBody requestJsonBody) {
            this.body = requestJsonBody.getBody().getBytes();
            this.contentType = requestJsonBody.contentType().toString();
            return this;
        }

        public Builder setHeads(HeadBuilder headBuilder) {
            this.heads = headBuilder;
            return this;
        }

        public Builder setMethod(String str) {
            this.method = str;
            return this;
        }
    }

    protected BaseRequest(Parcel parcel) {
        this.method = parcel.readString();
        this.baseUrl = parcel.readString();
        this.path = parcel.readString();
        this.body = parcel.createByteArray();
        this.heads = (HeadBuilder) parcel.readParcelable(HeadBuilder.class.getClassLoader());
        this.contentType = parcel.readString();
    }

    public BaseRequest(Builder builder) {
        this.baseUrl = builder.baseUrl;
        this.heads = builder.heads;
        this.body = builder.body;
        this.method = builder.method;
        this.contentType = builder.contentType;
        this.path = builder.path;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getBaseUrl() {
        return this.baseUrl;
    }

    public byte[] getBody() {
        return this.body;
    }

    public String getContentType() {
        return this.contentType;
    }

    public Headers.Builder getHeads() {
        return this.heads.buildOkHttpHeader();
    }

    public String getMethod() {
        return this.method;
    }

    public String getPath() {
        return this.path;
    }

    public String getUrl() {
        return this.baseUrl + this.path;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.method);
        parcel.writeString(this.baseUrl);
        parcel.writeString(this.path);
        parcel.writeByteArray(this.body);
        parcel.writeParcelable(this.heads, 0);
        parcel.writeString(this.contentType);
    }
}
