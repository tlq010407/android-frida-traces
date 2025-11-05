package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_emojiStatuses extends TL_account$EmojiStatuses {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.hash = inputSerializedData.readInt64(z);
        this.statuses = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_account$TL_emojiStatuses$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TLRPC.EmojiStatus.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1866176559);
        outputSerializedData.writeInt64(this.hash);
        Vector.serialize(outputSerializedData, this.statuses);
    }
}
