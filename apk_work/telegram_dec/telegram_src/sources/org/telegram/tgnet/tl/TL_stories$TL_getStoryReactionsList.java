package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_getStoryReactionsList extends TLObject {
    public int flags;
    public boolean forwards_first;
    public int id;
    public int limit;
    public String offset;
    public TLRPC.InputPeer peer;
    public TLRPC.Reaction reaction;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stories$TL_storyReactionsList.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1179482081);
        int i = this.forwards_first ? this.flags | 4 : this.flags & (-5);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.id);
        if ((this.flags & 1) != 0) {
            this.reaction.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.offset);
        }
        outputSerializedData.writeInt32(this.limit);
    }
}
