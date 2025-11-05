package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_account$BusinessAwayMessageSchedule extends TLObject {
    public static TL_account$BusinessAwayMessageSchedule TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_account$BusinessAwayMessageSchedule tL_account$TL_businessAwayMessageScheduleCustom = i != -1007487743 ? i != -910564679 ? i != -867328308 ? null : new TL_account$TL_businessAwayMessageScheduleCustom() : new TL_account$TL_businessAwayMessageScheduleAlways() : new TL_account$TL_businessAwayMessageScheduleOutsideWorkHours();
        if (tL_account$TL_businessAwayMessageScheduleCustom == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in BusinessAwayMessageSchedule", Integer.valueOf(i)));
        }
        if (tL_account$TL_businessAwayMessageScheduleCustom != null) {
            tL_account$TL_businessAwayMessageScheduleCustom.readParams(inputSerializedData, z);
        }
        return tL_account$TL_businessAwayMessageScheduleCustom;
    }
}
