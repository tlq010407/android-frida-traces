package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_mediaAreaChannelPost extends TL_stories$MediaArea {
    public long channel_id;
    public int msg_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.coordinates = TL_stories$MediaAreaCoordinates.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.channel_id = inputSerializedData.readInt64(z);
        this.msg_id = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1996756655);
        this.coordinates.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt64(this.channel_id);
        outputSerializedData.writeInt32(this.msg_id);
    }
}
