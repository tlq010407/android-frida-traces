package org.telegram.tgnet.tl;

import org.telegram.messenger.DialogObject;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stories$StoryReaction extends TLObject {
    public TLRPC.Message message;
    public TLRPC.Peer peer_id;
    public TL_stories$StoryItem story;

    public static TL_stories$StoryReaction TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stories$StoryReaction tL_stories$TL_storyReaction = i != -1146411453 ? i != -808644845 ? i != 1620104917 ? null : new TL_stories$TL_storyReaction() : new TL_stories$StoryReaction() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyReactionPublicRepost
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                this.peer_id = TLRPC.Peer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                TL_stories$StoryItem tL_stories$StoryItemTLdeserialize = TL_stories$StoryItem.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                this.story = tL_stories$StoryItemTLdeserialize;
                if (tL_stories$StoryItemTLdeserialize != null) {
                    tL_stories$StoryItemTLdeserialize.dialogId = DialogObject.getPeerDialogId(this.peer_id);
                }
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-808644845);
                this.peer_id.serializeToStream(outputSerializedData);
                this.story.serializeToStream(outputSerializedData);
            }
        } : new TL_stories$StoryReaction() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyReactionPublicForward
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                this.message = TLRPC.Message.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-1146411453);
                this.message.serializeToStream(outputSerializedData);
            }
        };
        if (tL_stories$TL_storyReaction == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StoryReaction", Integer.valueOf(i)));
        }
        if (tL_stories$TL_storyReaction != null) {
            tL_stories$TL_storyReaction.readParams(inputSerializedData, z);
        }
        return tL_stories$TL_storyReaction;
    }
}
