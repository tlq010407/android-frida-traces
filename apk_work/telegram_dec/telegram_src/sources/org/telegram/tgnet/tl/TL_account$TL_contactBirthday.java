package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_contactBirthday extends TLObject {
    public TL_account$TL_birthday birthday;
    public long contact_id;

    public static TL_account$TL_contactBirthday TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != 496600883) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_contactBirthday", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$TL_contactBirthday tL_account$TL_contactBirthday = new TL_account$TL_contactBirthday();
        tL_account$TL_contactBirthday.readParams(inputSerializedData, z);
        return tL_account$TL_contactBirthday;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.contact_id = inputSerializedData.readInt64(z);
        this.birthday = TL_account$TL_birthday.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(496600883);
        outputSerializedData.writeInt64(this.contact_id);
        this.birthday.serializeToStream(outputSerializedData);
    }
}
