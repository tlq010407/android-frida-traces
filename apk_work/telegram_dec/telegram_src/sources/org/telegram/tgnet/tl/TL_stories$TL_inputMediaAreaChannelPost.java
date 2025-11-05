package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_inputMediaAreaChannelPost extends TL_stories$MediaArea {
    public TLRPC.InputChannel channel;
    public int msg_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.coordinates = TL_stories$MediaAreaCoordinates.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.channel = TLRPC.InputChannel.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.msg_id = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(577893055);
        this.coordinates.serializeToStream(outputSerializedData);
        this.channel.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.msg_id);
    }
}
