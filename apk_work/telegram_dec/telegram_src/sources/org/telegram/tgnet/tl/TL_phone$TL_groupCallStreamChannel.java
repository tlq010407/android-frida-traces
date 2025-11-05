package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$TL_groupCallStreamChannel extends TLObject {
    public int channel;
    public long last_timestamp_ms;
    public int scale;

    public static TL_phone$TL_groupCallStreamChannel TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-2132064081 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_groupCallStreamChannel", Integer.valueOf(i)));
            }
            return null;
        }
        TL_phone$TL_groupCallStreamChannel tL_phone$TL_groupCallStreamChannel = new TL_phone$TL_groupCallStreamChannel();
        tL_phone$TL_groupCallStreamChannel.readParams(inputSerializedData, z);
        return tL_phone$TL_groupCallStreamChannel;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.channel = inputSerializedData.readInt32(z);
        this.scale = inputSerializedData.readInt32(z);
        this.last_timestamp_ms = inputSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-2132064081);
        outputSerializedData.writeInt32(this.channel);
        outputSerializedData.writeInt32(this.scale);
        outputSerializedData.writeInt64(this.last_timestamp_ms);
    }
}
