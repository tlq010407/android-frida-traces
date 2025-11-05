package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_prepaidGiveaway extends TL_stories$PrepaidGiveaway {
    public int months;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.id = inputSerializedData.readInt64(z);
        this.months = inputSerializedData.readInt32(z);
        this.quantity = inputSerializedData.readInt32(z);
        this.date = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1303143084);
        outputSerializedData.writeInt64(this.id);
        outputSerializedData.writeInt32(this.months);
        outputSerializedData.writeInt32(this.quantity);
        outputSerializedData.writeInt32(this.date);
    }
}
