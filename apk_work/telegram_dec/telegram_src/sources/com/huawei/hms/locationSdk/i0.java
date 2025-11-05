package com.huawei.hms.locationSdk;

import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.TaskApiCall;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class i0<ClientT extends AnyClient, ResultT> extends TaskApiCall<ClientT, ResultT> {
    public final String a;

    public i0(String str, String str2, String str3) {
        super(str, str2);
        this.a = str3;
    }

    public i0(String str, String str2, String str3, String str4) {
        super(str, str2, str4);
        this.a = str3;
    }
}
