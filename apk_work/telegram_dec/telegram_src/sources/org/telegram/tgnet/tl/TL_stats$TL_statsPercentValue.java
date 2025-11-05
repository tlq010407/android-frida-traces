package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stats$TL_statsPercentValue extends TLObject {
    public double part;
    public double total;

    public static TL_stats$TL_statsPercentValue TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-875679776 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_statsPercentValue", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stats$TL_statsPercentValue tL_stats$TL_statsPercentValue = new TL_stats$TL_statsPercentValue();
        tL_stats$TL_statsPercentValue.readParams(inputSerializedData, z);
        return tL_stats$TL_statsPercentValue;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.part = inputSerializedData.readDouble(z);
        this.total = inputSerializedData.readDouble(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-875679776);
        outputSerializedData.writeDouble(this.part);
        outputSerializedData.writeDouble(this.total);
    }
}
