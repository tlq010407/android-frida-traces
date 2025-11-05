package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stars$StarGiftAttributeId extends TLObject {
    public int backdrop_id;
    public long document_id;

    public static TL_stars$StarGiftAttributeId TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stars$StarGiftAttributeId tL_stars$starGiftAttributeIdPattern = i != 520210263 ? i != 1219145276 ? i != 1242965043 ? null : new TL_stars$starGiftAttributeIdPattern() : new TL_stars$starGiftAttributeIdModel() : new TL_stars$starGiftAttributeIdBackdrop();
        if (tL_stars$starGiftAttributeIdPattern == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StarGiftAttributeId", Integer.valueOf(i)));
        }
        if (tL_stars$starGiftAttributeIdPattern != null) {
            tL_stars$starGiftAttributeIdPattern.readParams(inputSerializedData, z);
        }
        return tL_stars$starGiftAttributeIdPattern;
    }
}
