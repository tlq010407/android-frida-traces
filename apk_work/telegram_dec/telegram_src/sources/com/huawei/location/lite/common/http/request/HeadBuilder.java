package com.huawei.location.lite.common.http.request;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.UUID;
import okhttp3.Headers;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class HeadBuilder implements Parcelable {
    private static final String APPLICATION_JSON = "application/json";
    public static final String CLIENT_CP_NAME = "X-CP-Info";
    private static final String CLIENT_SDK_VERSION = "x-client-sdk-version";
    private static final String CONTENT_TYPE = "Content-Type";
    public static final Parcelable.Creator<HeadBuilder> CREATOR = new Parcelable.Creator() { // from class: com.huawei.location.lite.common.http.request.HeadBuilder.1
        @Override // android.os.Parcelable.Creator
        public HeadBuilder createFromParcel(Parcel parcel) {
            return new HeadBuilder(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public HeadBuilder[] newArray(int i) {
            return new HeadBuilder[i];
        }
    };
    public static final String X_REQUEST_ID = "X-Request-ID";
    private String contentType;
    private HashMap<String, String> exHeaders;
    private String kitSDKVersion;
    private String packageName;
    private String transId;

    protected HeadBuilder(Parcel parcel) {
        this.contentType = parcel.readString();
        this.transId = parcel.readString();
        this.kitSDKVersion = parcel.readString();
        this.packageName = parcel.readString();
        this.exHeaders = parcel.readHashMap(HashMap.class.getClassLoader());
    }

    public HeadBuilder(String str) {
        this.contentType = APPLICATION_JSON;
        this.transId = TextUtils.isEmpty(str) ? UUID.randomUUID().toString() : str;
    }

    public HashMap<String, String> build() {
        HashMap<String, String> map = new HashMap<>();
        map.put(CONTENT_TYPE, this.contentType);
        map.put(X_REQUEST_ID, this.transId);
        map.put(CLIENT_SDK_VERSION, this.kitSDKVersion);
        map.put(CLIENT_CP_NAME, this.packageName);
        HashMap<String, String> map2 = this.exHeaders;
        if (map2 != null) {
            map.putAll(map2);
        }
        return map;
    }

    public Headers.Builder buildOkHttpHeader() {
        HashMap<String, String> mapBuild = build();
        Headers.Builder builder = new Headers.Builder();
        for (String str : mapBuild.keySet()) {
            String str2 = mapBuild.get(str);
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                builder.add(str, str2);
            }
        }
        return builder;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getTransId() {
        return this.transId;
    }

    public HeadBuilder setContentType(String str) {
        this.contentType = str;
        return this;
    }

    public HeadBuilder setExHeaders(HashMap<String, String> map) {
        this.exHeaders = map;
        return this;
    }

    public HeadBuilder setKitSDKVersion(String str) {
        this.kitSDKVersion = str;
        return this;
    }

    public HeadBuilder setPackageName(String str) {
        this.packageName = str;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.contentType);
        parcel.writeString(this.transId);
        parcel.writeString(this.kitSDKVersion);
        parcel.writeString(this.packageName);
        parcel.writeMap(this.exHeaders);
    }
}
