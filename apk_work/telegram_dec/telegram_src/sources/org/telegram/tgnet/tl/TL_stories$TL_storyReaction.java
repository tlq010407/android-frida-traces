package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_storyReaction extends TL_stories$StoryReaction {
    public int date;
    public TLRPC.Reaction reaction;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.peer_id = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.date = inputSerializedData.readInt32(z);
        this.reaction = TLRPC.Reaction.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1620104917);
        this.peer_id.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.date);
        this.reaction.serializeToStream(outputSerializedData);
    }
}
