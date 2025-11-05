package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_account$SavedRingtones extends TLObject {
    public static TL_account$SavedRingtones TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_account$SavedRingtones tL_account$TL_savedRingtones = i != -1041683259 ? i != -67704655 ? null : new TL_account$SavedRingtones() { // from class: org.telegram.tgnet.tl.TL_account$TL_savedRingtonesNotModified
            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-67704655);
            }
        } : new TL_account$TL_savedRingtones();
        if (tL_account$TL_savedRingtones == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in account_SavedRingtones", Integer.valueOf(i)));
        }
        if (tL_account$TL_savedRingtones != null) {
            tL_account$TL_savedRingtones.readParams(inputSerializedData, z);
        }
        return tL_account$TL_savedRingtones;
    }
}
