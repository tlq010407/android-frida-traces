package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$starGiftAttributeCounter extends TLObject {
    public static int constructor = 783398488;
    public TL_stars$StarGiftAttributeId attribute;
    public int count;

    public static TL_stars$starGiftAttributeCounter TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (constructor != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in starGiftAttributeCounter", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stars$starGiftAttributeCounter tL_stars$starGiftAttributeCounter = new TL_stars$starGiftAttributeCounter();
        tL_stars$starGiftAttributeCounter.readParams(inputSerializedData, z);
        return tL_stars$starGiftAttributeCounter;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.attribute = TL_stars$StarGiftAttributeId.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.count = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(constructor);
        this.attribute.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.count);
    }
}
