package com.google.android.datatransport.runtime;

import com.google.firebase.encoders.proto.ProtobufEncoder;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class ProtoEncoderDoNotUse {
    private static final ProtobufEncoder ENCODER = ProtobufEncoder.builder().configureWith(AutoProtoEncoderDoNotUseEncoder.CONFIG).build();

    public static byte[] encode(Object obj) {
        return ENCODER.encode(obj);
    }
}
