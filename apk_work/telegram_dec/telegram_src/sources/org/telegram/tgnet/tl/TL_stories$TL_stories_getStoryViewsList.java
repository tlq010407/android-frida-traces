package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_stories_getStoryViewsList extends TLObject {
    public int flags;
    public boolean forwards_first;
    public int id;
    public boolean just_contacts;
    public int limit;
    public String offset;
    public TLRPC.InputPeer peer;
    public String q;
    public boolean reactions_first;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stories$StoryViewsList.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(2127707223);
        int i = this.just_contacts ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.reactions_first ? i | 4 : i & (-5);
        this.flags = i2;
        int i3 = this.forwards_first ? i2 | 8 : i2 & (-9);
        this.flags = i3;
        outputSerializedData.writeInt32(i3);
        this.peer.serializeToStream(outputSerializedData);
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.q);
        }
        outputSerializedData.writeInt32(this.id);
        outputSerializedData.writeString(this.offset);
        outputSerializedData.writeInt32(this.limit);
    }
}
