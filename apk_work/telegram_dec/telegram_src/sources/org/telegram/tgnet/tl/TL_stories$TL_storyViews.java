package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC$TL_messageReactions$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_storyViews extends TL_stories$StoryViews {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.has_viewers = (int32 & 2) != 0;
        this.views_count = inputSerializedData.readInt32(z);
        if ((this.flags & 4) != 0) {
            this.forwards_count = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 8) != 0) {
            this.reactions = Vector.deserialize(inputSerializedData, new TLRPC$TL_messageReactions$$ExternalSyntheticLambda0(), z);
        }
        if ((this.flags & 16) != 0) {
            this.reactions_count = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 1) != 0) {
            this.recent_viewers = Vector.deserializeLong(inputSerializedData, z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1923523370);
        int i = this.has_viewers ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        outputSerializedData.writeInt32(this.views_count);
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeInt32(this.forwards_count);
        }
        if ((this.flags & 8) != 0) {
            Vector.serialize(outputSerializedData, this.reactions);
        }
        if ((this.flags & 16) != 0) {
            outputSerializedData.writeInt32(this.reactions_count);
        }
        if ((this.flags & 1) != 0) {
            Vector.serializeLong(outputSerializedData, this.recent_viewers);
        }
    }
}
