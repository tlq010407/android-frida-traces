package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_prepaidStarsGiveaway extends TL_stories$PrepaidGiveaway {
    public long stars;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.id = inputSerializedData.readInt64(z);
        this.stars = inputSerializedData.readInt64(z);
        this.quantity = inputSerializedData.readInt32(z);
        this.boosts = inputSerializedData.readInt32(z);
        this.date = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1700956192);
        outputSerializedData.writeInt64(this.id);
        outputSerializedData.writeInt64(this.stars);
        outputSerializedData.writeInt32(this.quantity);
        outputSerializedData.writeInt32(this.boosts);
        outputSerializedData.writeInt32(this.date);
    }
}
