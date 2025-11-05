package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$paidMessagesRevenue extends TLObject {
    public long stars_amount;

    public static TL_account$paidMessagesRevenue TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != 504403720) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in paidMessagesRevenue", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$paidMessagesRevenue tL_account$paidMessagesRevenue = new TL_account$paidMessagesRevenue();
        tL_account$paidMessagesRevenue.readParams(inputSerializedData, z);
        return tL_account$paidMessagesRevenue;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.stars_amount = inputSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(504403720);
        outputSerializedData.writeInt64(this.stars_amount);
    }
}
