package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_birthday extends TLObject {
    public int day;
    public int flags;
    public int month;
    public int year;

    public static TL_account$TL_birthday TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != 1821253126) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_birthday", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$TL_birthday tL_account$TL_birthday = new TL_account$TL_birthday();
        tL_account$TL_birthday.readParams(inputSerializedData, z);
        return tL_account$TL_birthday;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.day = inputSerializedData.readInt32(z);
        this.month = inputSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.year = inputSerializedData.readInt32(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1821253126);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeInt32(this.day);
        outputSerializedData.writeInt32(this.month);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt32(this.year);
        }
    }
}
