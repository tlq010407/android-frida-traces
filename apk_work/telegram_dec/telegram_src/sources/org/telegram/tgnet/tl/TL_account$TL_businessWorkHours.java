package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_businessWorkHours extends TLObject {
    public int flags;
    public boolean open_now;
    public String timezone_id;
    public ArrayList weekly_open = new ArrayList();

    public static TL_account$TL_businessWorkHours TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != -1936543592) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_businessWorkHours", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$TL_businessWorkHours tL_account$TL_businessWorkHours = new TL_account$TL_businessWorkHours();
        tL_account$TL_businessWorkHours.readParams(inputSerializedData, z);
        return tL_account$TL_businessWorkHours;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.open_now = (int32 & 1) != 0;
        this.timezone_id = inputSerializedData.readString(z);
        this.weekly_open = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_account$TL_businessWorkHours$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_account$TL_businessWeeklyOpen.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1936543592);
        int i = this.open_now ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        outputSerializedData.writeString(this.timezone_id);
        Vector.serialize(outputSerializedData, this.weekly_open);
    }
}
