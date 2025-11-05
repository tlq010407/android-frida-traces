package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_businessWeeklyOpen extends TLObject {
    public int end_minute;
    public int start_minute;

    public static TL_account$TL_businessWeeklyOpen TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != 302717625) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_businessWeeklyOpen", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$TL_businessWeeklyOpen tL_account$TL_businessWeeklyOpen = new TL_account$TL_businessWeeklyOpen();
        tL_account$TL_businessWeeklyOpen.readParams(inputSerializedData, z);
        return tL_account$TL_businessWeeklyOpen;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.start_minute = inputSerializedData.readInt32(z);
        this.end_minute = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(302717625);
        outputSerializedData.writeInt32(this.start_minute);
        outputSerializedData.writeInt32(this.end_minute);
    }
}
