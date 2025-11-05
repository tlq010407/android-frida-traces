package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stories$StoryFwdHeader extends TLObject {
    public int flags;
    public TLRPC.Peer from;
    public String from_name;
    public boolean modified;
    public int story_id;

    public static TL_stories$StoryFwdHeader TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stories$StoryFwdHeader tL_stories$StoryFwdHeader = i != -1205411504 ? null : new TL_stories$StoryFwdHeader() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyFwdHeader
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                int int32 = inputSerializedData2.readInt32(z2);
                this.flags = int32;
                this.modified = (int32 & 8) != 0;
                if ((int32 & 1) != 0) {
                    this.from = TLRPC.Peer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                }
                if ((this.flags & 2) != 0) {
                    this.from_name = inputSerializedData2.readString(z2);
                }
                if ((this.flags & 4) != 0) {
                    this.story_id = inputSerializedData2.readInt32(z2);
                }
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-1205411504);
                int i2 = this.modified ? this.flags | 8 : this.flags & (-9);
                this.flags = i2;
                outputSerializedData.writeInt32(i2);
                if ((this.flags & 1) != 0) {
                    this.from.serializeToStream(outputSerializedData);
                }
                if ((this.flags & 2) != 0) {
                    outputSerializedData.writeString(this.from_name);
                }
                if ((this.flags & 4) != 0) {
                    outputSerializedData.writeInt32(this.story_id);
                }
            }
        };
        if (tL_stories$StoryFwdHeader == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StoryFwdHeader", Integer.valueOf(i)));
        }
        if (tL_stories$StoryFwdHeader != null) {
            tL_stories$StoryFwdHeader.readParams(inputSerializedData, z);
        }
        return tL_stories$StoryFwdHeader;
    }
}
