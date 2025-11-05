package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_stories_sendReaction extends TLObject {
    public boolean add_to_recent;
    public int flags;
    public TLRPC.InputPeer peer;
    public TLRPC.Reaction reaction;
    public int story_id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(2144810674);
        int i = this.add_to_recent ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.story_id);
        this.reaction.serializeToStream(outputSerializedData);
    }
}
