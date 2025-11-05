package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_starsGiftOption extends TLObject {
    public long amount;
    public String currency;
    public boolean extended;
    public int flags;
    public boolean loadingStorePrice;
    public boolean missingStorePrice;
    public long stars;
    public String store_product;

    public static TL_stars$TL_starsGiftOption TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (1577421297 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_starsGiftOption", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stars$TL_starsGiftOption tL_stars$TL_starsGiftOption = new TL_stars$TL_starsGiftOption();
        tL_stars$TL_starsGiftOption.readParams(inputSerializedData, z);
        return tL_stars$TL_starsGiftOption;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.extended = (int32 & 2) != 0;
        this.stars = inputSerializedData.readInt64(z);
        if ((this.flags & 1) != 0) {
            this.store_product = inputSerializedData.readString(z);
        }
        this.currency = inputSerializedData.readString(z);
        this.amount = inputSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1577421297);
        int i = this.extended ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        outputSerializedData.writeInt64(this.stars);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.store_product);
        }
        outputSerializedData.writeString(this.currency);
        outputSerializedData.writeInt64(this.amount);
    }
}
