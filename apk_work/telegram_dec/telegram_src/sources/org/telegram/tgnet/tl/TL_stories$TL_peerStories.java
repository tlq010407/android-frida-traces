package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_peerStories extends TL_stories$PeerStories {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.peer = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        if ((this.flags & 1) != 0) {
            this.max_read_id = inputSerializedData.readInt32(z);
        }
        this.stories = Vector.deserialize(inputSerializedData, new TL_stories$TL_peerStories$$ExternalSyntheticLambda0(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1707742823);
        outputSerializedData.writeInt32(this.flags);
        this.peer.serializeToStream(outputSerializedData);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt32(this.max_read_id);
        }
        Vector.serialize(outputSerializedData, this.stories);
    }
}
