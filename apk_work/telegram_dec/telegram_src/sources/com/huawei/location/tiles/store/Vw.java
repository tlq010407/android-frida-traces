package com.huawei.location.tiles.store;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Vw {

    @SerializedName("tileInfoList")
    private List<FB> Vw;

    @SerializedName("code")
    private String yn;

    public Vw(String str, List list) {
        this.yn = str;
        this.Vw = list;
    }

    public List Vw() {
        return this.Vw;
    }

    public String yn() {
        return this.yn;
    }
}
