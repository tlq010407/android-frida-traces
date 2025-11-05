package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_storyView extends TL_stories$StoryView {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.blocked = (int32 & 1) != 0;
        this.blocked_my_stories_from = (int32 & 2) != 0;
        this.user_id = inputSerializedData.readInt64(z);
        this.date = inputSerializedData.readInt32(z);
        if ((this.flags & 4) != 0) {
            this.reaction = TLRPC.Reaction.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1329730875);
        int i = this.blocked ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.blocked_my_stories_from ? i | 2 : i & (-3);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
        outputSerializedData.writeInt64(this.user_id);
        outputSerializedData.writeInt32(this.date);
        if ((this.flags & 4) != 0) {
            this.reaction.serializeToStream(outputSerializedData);
        }
    }
}
