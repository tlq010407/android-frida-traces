package com.huawei.hms.aaid.plugin;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class ProxyCenter {
    public PushProxy proxy;

    private static class a {
        public static ProxyCenter a = new ProxyCenter();
    }

    public static ProxyCenter getInstance() {
        return a.a;
    }

    public static PushProxy getProxy() {
        return getInstance().proxy;
    }

    public static void register(PushProxy pushProxy) {
        getInstance().proxy = pushProxy;
    }
}
