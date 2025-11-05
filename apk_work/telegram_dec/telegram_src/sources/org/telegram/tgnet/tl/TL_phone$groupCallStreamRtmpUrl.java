package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$groupCallStreamRtmpUrl extends TLObject {
    public String key;
    public String url;

    public static TL_phone$groupCallStreamRtmpUrl TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (767505458 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_phone_groupCallStreamRtmpUrl", Integer.valueOf(i)));
            }
            return null;
        }
        TL_phone$groupCallStreamRtmpUrl tL_phone$groupCallStreamRtmpUrl = new TL_phone$groupCallStreamRtmpUrl();
        tL_phone$groupCallStreamRtmpUrl.readParams(inputSerializedData, z);
        return tL_phone$groupCallStreamRtmpUrl;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.url = inputSerializedData.readString(z);
        this.key = inputSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(767505458);
        outputSerializedData.writeString(this.url);
        outputSerializedData.writeString(this.key);
    }
}
