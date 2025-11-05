package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$starGiftUpgradePreview extends TLObject {
    public ArrayList sample_attributes = new ArrayList();

    public static TL_stars$starGiftUpgradePreview TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (377215243 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in starGiftUpgradePreview", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stars$starGiftUpgradePreview tL_stars$starGiftUpgradePreview = new TL_stars$starGiftUpgradePreview();
        tL_stars$starGiftUpgradePreview.readParams(inputSerializedData, z);
        return tL_stars$starGiftUpgradePreview;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.sample_attributes = Vector.deserialize(inputSerializedData, new TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda0(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(377215243);
        Vector.serialize(outputSerializedData, this.sample_attributes);
    }
}
