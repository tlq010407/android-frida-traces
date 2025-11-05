package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stories$StoryViewsList extends TLObject {
    public int count;
    public int flags;
    public int forwards_count;
    public int reactions_count;
    public int views_count;
    public ArrayList views = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();
    public String next_offset = "";

    public static TL_stories$StoryViewsList TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stories$StoryViewsList tL_stories$StoryViewsList = i != 1189722604 ? i != 1507299269 ? null : new TL_stories$StoryViewsList() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyViewsList
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                this.flags = inputSerializedData2.readInt32(z2);
                this.count = inputSerializedData2.readInt32(z2);
                this.views_count = inputSerializedData2.readInt32(z2);
                this.forwards_count = inputSerializedData2.readInt32(z2);
                this.reactions_count = inputSerializedData2.readInt32(z2);
                this.views = Vector.deserialize(inputSerializedData2, new TL_stories$TL_storyViewsList$$ExternalSyntheticLambda0(), z2);
                this.chats = Vector.deserialize(inputSerializedData2, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z2);
                this.users = Vector.deserialize(inputSerializedData2, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z2);
                if ((this.flags & 1) != 0) {
                    this.next_offset = inputSerializedData2.readString(z2);
                }
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(1507299269);
                outputSerializedData.writeInt32(this.flags);
                outputSerializedData.writeInt32(this.count);
                outputSerializedData.writeInt32(this.views_count);
                outputSerializedData.writeInt32(this.forwards_count);
                outputSerializedData.writeInt32(this.reactions_count);
                Vector.serialize(outputSerializedData, this.views);
                Vector.serialize(outputSerializedData, this.chats);
                Vector.serialize(outputSerializedData, this.users);
                if ((this.flags & 1) != 0) {
                    outputSerializedData.writeString(this.next_offset);
                }
            }
        } : new TL_stories$StoryViewsList() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyViewsList_layer167
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                this.flags = inputSerializedData2.readInt32(z2);
                this.count = inputSerializedData2.readInt32(z2);
                this.reactions_count = inputSerializedData2.readInt32(z2);
                this.views = Vector.deserialize(inputSerializedData2, new TL_stories$TL_storyViewsList$$ExternalSyntheticLambda0(), z2);
                this.users = Vector.deserialize(inputSerializedData2, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z2);
                if ((this.flags & 1) != 0) {
                    this.next_offset = inputSerializedData2.readString(z2);
                }
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(1189722604);
                outputSerializedData.writeInt32(this.flags);
                outputSerializedData.writeInt32(this.count);
                outputSerializedData.writeInt32(this.reactions_count);
                Vector.serialize(outputSerializedData, this.views);
                Vector.serialize(outputSerializedData, this.users);
                if ((this.flags & 1) != 0) {
                    outputSerializedData.writeString(this.next_offset);
                }
            }
        };
        if (tL_stories$StoryViewsList == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StoryViewsList", Integer.valueOf(i)));
        }
        if (tL_stories$StoryViewsList != null) {
            tL_stories$StoryViewsList.readParams(inputSerializedData, z);
        }
        return tL_stories$StoryViewsList;
    }
}
