package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_stories_searchPosts extends TLObject {
    public TL_stories$MediaArea area;
    public int flags;
    public String hashtag;
    public int limit;
    public String offset;
    public TLRPC.InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stories$TL_foundStories.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-780072697);
        outputSerializedData.writeInt32(this.flags);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.hashtag);
        }
        if ((this.flags & 2) != 0) {
            this.area.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 4) != 0) {
            this.peer.serializeToStream(outputSerializedData);
        }
        outputSerializedData.writeString(this.offset);
        outputSerializedData.writeInt32(this.limit);
    }
}
