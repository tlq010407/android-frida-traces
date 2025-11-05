package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_storyReactionsList extends TLObject {
    public int count;
    public int flags;
    public String next_offset;
    public ArrayList reactions = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_stories$TL_storyReactionsList TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1436583780 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_storyReactionsList", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_storyReactionsList tL_stories$TL_storyReactionsList = new TL_stories$TL_storyReactionsList();
        tL_stories$TL_storyReactionsList.readParams(inputSerializedData, z);
        return tL_stories$TL_storyReactionsList;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.count = inputSerializedData.readInt32(z);
        this.reactions = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyReactionsList$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_stories$StoryReaction.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
        if ((this.flags & 1) != 0) {
            this.next_offset = inputSerializedData.readString(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1436583780);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeInt32(this.count);
        Vector.serialize(outputSerializedData, this.reactions);
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.next_offset);
        }
    }
}
