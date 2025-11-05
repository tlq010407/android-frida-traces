package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_fragment$TL_collectibleInfo extends TLObject {
    public long amount;
    public long crypto_amount;
    public String crypto_currency;
    public String currency;
    public int purchase_date;
    public String url;

    public static TL_fragment$TL_collectibleInfo TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (1857945489 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_collectibleInfo", Integer.valueOf(i)));
            }
            return null;
        }
        TL_fragment$TL_collectibleInfo tL_fragment$TL_collectibleInfo = new TL_fragment$TL_collectibleInfo();
        tL_fragment$TL_collectibleInfo.readParams(inputSerializedData, z);
        return tL_fragment$TL_collectibleInfo;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.purchase_date = inputSerializedData.readInt32(z);
        this.currency = inputSerializedData.readString(z);
        this.amount = inputSerializedData.readInt64(z);
        this.crypto_currency = inputSerializedData.readString(z);
        this.crypto_amount = inputSerializedData.readInt64(z);
        this.url = inputSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1857945489);
        outputSerializedData.writeInt32(this.purchase_date);
        outputSerializedData.writeString(this.currency);
        outputSerializedData.writeInt64(this.amount);
        outputSerializedData.writeString(this.crypto_currency);
        outputSerializedData.writeInt64(this.crypto_amount);
        outputSerializedData.writeString(this.url);
    }
}
