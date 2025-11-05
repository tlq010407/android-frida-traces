package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stories$StoryView extends TLObject {
    public boolean blocked;
    public boolean blocked_my_stories_from;
    public int date;
    public int flags;
    public TLRPC.Message message;
    public TLRPC.Peer peer_id;
    public TLRPC.Reaction reaction;
    public TL_stories$StoryItem story;
    public long user_id;

    public static TL_stories$StoryView TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stories$StoryView tL_stories$TL_storyView = i != -1870436597 ? i != -1329730875 ? i != -1116418231 ? null : new TL_stories$StoryView() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyViewPublicRepost
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                int int32 = inputSerializedData2.readInt32(z2);
                this.flags = int32;
                this.blocked = (int32 & 1) != 0;
                this.blocked_my_stories_from = (int32 & 2) != 0;
                this.peer_id = TLRPC.Peer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                this.story = TL_stories$StoryItem.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-1116418231);
                int i2 = this.blocked ? this.flags | 1 : this.flags & (-2);
                this.flags = i2;
                int i3 = this.blocked_my_stories_from ? i2 | 2 : i2 & (-3);
                this.flags = i3;
                outputSerializedData.writeInt32(i3);
                this.peer_id.serializeToStream(outputSerializedData);
                this.story.serializeToStream(outputSerializedData);
            }
        } : new TL_stories$TL_storyView() : new TL_stories$StoryView() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyViewPublicForward
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                int int32 = inputSerializedData2.readInt32(z2);
                this.flags = int32;
                this.blocked = (int32 & 1) != 0;
                this.blocked_my_stories_from = (int32 & 2) != 0;
                this.message = TLRPC.Message.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-1870436597);
                int i2 = this.blocked ? this.flags | 1 : this.flags & (-2);
                this.flags = i2;
                int i3 = this.blocked_my_stories_from ? i2 | 2 : i2 & (-3);
                this.flags = i3;
                outputSerializedData.writeInt32(i3);
                this.message.serializeToStream(outputSerializedData);
            }
        };
        if (tL_stories$TL_storyView == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StoryView", Integer.valueOf(i)));
        }
        if (tL_stories$TL_storyView != null) {
            tL_stories$TL_storyView.readParams(inputSerializedData, z);
        }
        return tL_stories$TL_storyView;
    }
}
