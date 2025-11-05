package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_starsGiveawayOption extends TLObject {
    public long amount;
    public String currency;
    public boolean extended;
    public int flags;
    public boolean isDefault;
    public boolean loadingStorePrice;
    public boolean missingStorePrice;
    public long stars;
    public String store_product;
    public ArrayList winners = new ArrayList();
    public int yearly_boosts;

    public static TL_stars$TL_starsGiveawayOption TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1798404822 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_starsGiveawayOption", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stars$TL_starsGiveawayOption tL_stars$TL_starsGiveawayOption = new TL_stars$TL_starsGiveawayOption();
        tL_stars$TL_starsGiveawayOption.readParams(inputSerializedData, z);
        return tL_stars$TL_starsGiveawayOption;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.extended = (int32 & 1) != 0;
        this.isDefault = (int32 & 2) != 0;
        this.stars = inputSerializedData.readInt64(z);
        this.yearly_boosts = inputSerializedData.readInt32(z);
        if ((this.flags & 4) != 0) {
            this.store_product = inputSerializedData.readString(z);
        }
        this.currency = inputSerializedData.readString(z);
        this.amount = inputSerializedData.readInt64(z);
        this.winners = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsGiveawayOption$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_stars$TL_starsGiveawayWinnersOption.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1798404822);
        int i = this.extended ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.isDefault ? i | 2 : i & (-3);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
        outputSerializedData.writeInt64(this.stars);
        outputSerializedData.writeInt32(this.yearly_boosts);
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeString(this.store_product);
        }
        outputSerializedData.writeString(this.currency);
        outputSerializedData.writeInt64(this.amount);
        Vector.serialize(outputSerializedData, this.winners);
    }
}
