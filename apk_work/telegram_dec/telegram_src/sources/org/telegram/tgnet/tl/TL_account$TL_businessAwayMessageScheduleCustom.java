package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_businessAwayMessageScheduleCustom extends TL_account$BusinessAwayMessageSchedule {
    public int end_date;
    public int start_date;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.start_date = inputSerializedData.readInt32(z);
        this.end_date = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-867328308);
        outputSerializedData.writeInt32(this.start_date);
        outputSerializedData.writeInt32(this.end_date);
    }
}
