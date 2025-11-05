package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class TL_stars$TL_payments_uniqueStarGift extends TLObject {
    public TL_stars$StarGift gift;
    public ArrayList users = new ArrayList();

    public static TL_stars$TL_payments_uniqueStarGift TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-895289845 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_payments_uniqueStarGift", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stars$TL_payments_uniqueStarGift tL_stars$TL_payments_uniqueStarGift = new TL_stars$TL_payments_uniqueStarGift();
        tL_stars$TL_payments_uniqueStarGift.readParams(inputSerializedData, z);
        return tL_stars$TL_payments_uniqueStarGift;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.gift = TL_stars$StarGift.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-895289845);
        this.gift.serializeToStream(outputSerializedData);
        Vector.serialize(outputSerializedData, this.users);
    }
}
