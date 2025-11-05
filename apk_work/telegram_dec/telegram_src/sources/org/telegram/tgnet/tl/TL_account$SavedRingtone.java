package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_account$SavedRingtone extends TLObject {
    public static TL_account$SavedRingtone TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_account$SavedRingtone tL_account$TL_savedRingtoneConverted = i != -1222230163 ? i != 523271863 ? null : new TL_account$TL_savedRingtoneConverted() : new TL_account$SavedRingtone() { // from class: org.telegram.tgnet.tl.TL_account$TL_savedRingtone
            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-1222230163);
            }
        };
        if (tL_account$TL_savedRingtoneConverted == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in account_SavedRingtone", Integer.valueOf(i)));
        }
        if (tL_account$TL_savedRingtoneConverted != null) {
            tL_account$TL_savedRingtoneConverted.readParams(inputSerializedData, z);
        }
        return tL_account$TL_savedRingtoneConverted;
    }
}
