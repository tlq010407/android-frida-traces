package com.huawei.location.lite.common.config;

import com.google.gson.annotations.SerializedName;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ConfigResponseItem {

    @SerializedName("groupName")
    private String groupName;

    @SerializedName("itemName")
    private String itemName;

    @SerializedName("itemValue")
    private String itemValue;

    public String getItemName() {
        return this.itemName;
    }

    public String getItemValue() {
        return this.itemValue;
    }
}
