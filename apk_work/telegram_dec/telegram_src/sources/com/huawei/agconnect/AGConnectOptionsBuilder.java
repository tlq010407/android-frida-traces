package com.huawei.agconnect;

import android.content.Context;
import com.huawei.agconnect.config.impl.b;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class AGConnectOptionsBuilder {
    private InputStream inputStream;
    private String packageName;
    private AGCRoutePolicy routePolicy = AGCRoutePolicy.UNKNOWN;
    private final Map customConfigMap = new HashMap();
    private final List customServices = new ArrayList();

    public AGConnectOptions build(Context context) {
        return new b(context, this.packageName, this.routePolicy, this.inputStream, this.customConfigMap, this.customServices, null);
    }

    public AGConnectOptionsBuilder setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
        return this;
    }
}
