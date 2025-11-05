package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_starsSubscriptionPricing extends TLObject {
    public long amount;
    public int period;

    public static TL_stars$TL_starsSubscriptionPricing TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (88173912 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_starsSubscriptionPricing", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stars$TL_starsSubscriptionPricing tL_stars$TL_starsSubscriptionPricing = new TL_stars$TL_starsSubscriptionPricing();
        tL_stars$TL_starsSubscriptionPricing.readParams(inputSerializedData, z);
        return tL_stars$TL_starsSubscriptionPricing;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.period = inputSerializedData.readInt32(z);
        this.amount = inputSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(88173912);
        outputSerializedData.writeInt32(this.period);
        outputSerializedData.writeInt64(this.amount);
    }
}
