package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_account$WallPapers extends TLObject {
    public static TL_account$WallPapers TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_account$WallPapers tL_account$TL_wallPapers = i != -842824308 ? i != 471437699 ? null : new TL_account$WallPapers() { // from class: org.telegram.tgnet.tl.TL_account$TL_wallPapersNotModified
            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(471437699);
            }
        } : new TL_account$TL_wallPapers();
        if (tL_account$TL_wallPapers == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in account_WallPapers", Integer.valueOf(i)));
        }
        if (tL_account$TL_wallPapers != null) {
            tL_account$TL_wallPapers.readParams(inputSerializedData, z);
        }
        return tL_account$TL_wallPapers;
    }
}
