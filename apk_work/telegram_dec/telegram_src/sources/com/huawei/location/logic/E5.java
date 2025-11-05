package com.huawei.location.logic;

import com.huawei.hms.location.LocationRequest;
import java.io.Serializable;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class E5 implements Serializable {
    private long FB;
    private List LW;
    private int Vw;
    private String yn;

    public E5(String str, int i, long j, List list, LocationRequest locationRequest) {
        this.yn = str;
        this.Vw = i;
        this.FB = j;
        this.LW = list;
    }

    public int FB() {
        return this.Vw;
    }

    public String LW() {
        return this.yn;
    }

    public long Vw() {
        return this.FB;
    }

    public List yn() {
        return this.LW;
    }

    public void yn(long j) {
        this.FB = j;
    }

    public void yn(String str) {
        this.yn = str;
    }

    public void yn(List list) {
        List list2 = this.LW;
        if (list2 == null) {
            this.LW = list;
        } else {
            list2.addAll(list);
        }
    }
}
