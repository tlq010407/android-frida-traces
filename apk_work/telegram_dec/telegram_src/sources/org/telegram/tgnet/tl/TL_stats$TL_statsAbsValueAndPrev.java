package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stats$TL_statsAbsValueAndPrev extends TLObject {
    public double current;
    public double previous;

    public static TL_stats$TL_statsAbsValueAndPrev TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-884757282 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_statsAbsValueAndPrev", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stats$TL_statsAbsValueAndPrev tL_stats$TL_statsAbsValueAndPrev = new TL_stats$TL_statsAbsValueAndPrev();
        tL_stats$TL_statsAbsValueAndPrev.readParams(inputSerializedData, z);
        return tL_stats$TL_statsAbsValueAndPrev;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.current = inputSerializedData.readDouble(z);
        this.previous = inputSerializedData.readDouble(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-884757282);
        outputSerializedData.writeDouble(this.current);
        outputSerializedData.writeDouble(this.previous);
    }
}
