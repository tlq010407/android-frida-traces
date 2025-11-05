package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_account$Themes extends TLObject {
    public static TL_account$Themes TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_account$Themes tL_account$TL_themes;
        if (i == -1707242387) {
            tL_account$TL_themes = new TL_account$TL_themes();
        } else {
            if (i != -199313886) {
                if (z) {
                    throw new RuntimeException(String.format("can't parse magic %x in account_Themes", Integer.valueOf(i)));
                }
                return null;
            }
            tL_account$TL_themes = new TL_account$Themes() { // from class: org.telegram.tgnet.tl.TL_account$TL_themesNotModified
                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(OutputSerializedData outputSerializedData) {
                    outputSerializedData.writeInt32(-199313886);
                }
            };
        }
        tL_account$TL_themes.readParams(inputSerializedData, z);
        return tL_account$TL_themes;
    }
}
