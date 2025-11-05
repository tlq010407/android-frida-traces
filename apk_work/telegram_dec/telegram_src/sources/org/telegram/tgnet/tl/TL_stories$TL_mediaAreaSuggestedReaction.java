package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_mediaAreaSuggestedReaction extends TL_stories$MediaArea {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.dark = (int32 & 1) != 0;
        this.flipped = (int32 & 2) != 0;
        this.coordinates = TL_stories$MediaAreaCoordinates.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.reaction = TLRPC.Reaction.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(340088945);
        int i = this.dark ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.flipped ? i | 2 : i & (-3);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
        this.coordinates.serializeToStream(outputSerializedData);
        this.reaction.serializeToStream(outputSerializedData);
    }
}
