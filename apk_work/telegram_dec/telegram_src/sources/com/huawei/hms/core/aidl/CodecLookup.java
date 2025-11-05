package com.huawei.hms.core.aidl;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class CodecLookup {
    private CodecLookup() {
    }

    public static MessageCodec find(int i) {
        return i == 2 ? new a() : new MessageCodec();
    }
}
