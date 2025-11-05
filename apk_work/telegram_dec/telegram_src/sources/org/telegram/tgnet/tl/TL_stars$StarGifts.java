package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stars$StarGifts extends TLObject {
    public static TL_stars$StarGifts TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stars$StarGifts tL_stars$TL_starGifts = i != -1877571094 ? i != -1551326360 ? null : new TL_stars$StarGifts() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starGiftsNotModified
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-1551326360);
            }
        } : new TL_stars$TL_starGifts();
        if (tL_stars$TL_starGifts == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StarGifts", Integer.valueOf(i)));
        }
        if (tL_stars$TL_starGifts != null) {
            tL_stars$TL_starGifts.readParams(inputSerializedData, z);
        }
        return tL_stars$TL_starGifts;
    }
}
