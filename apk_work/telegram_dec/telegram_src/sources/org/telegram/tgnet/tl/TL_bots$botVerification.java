package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$botVerification extends TLObject {
    public long bot_id;
    public String description;
    public long icon;

    public static TL_bots$botVerification TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-113453988 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_bots.botVerification", Integer.valueOf(i)));
            }
            return null;
        }
        TL_bots$botVerification tL_bots$botVerification = new TL_bots$botVerification();
        tL_bots$botVerification.readParams(inputSerializedData, z);
        return tL_bots$botVerification;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.bot_id = inputSerializedData.readInt64(z);
        this.icon = inputSerializedData.readInt64(z);
        this.description = inputSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-113453988);
        outputSerializedData.writeInt64(this.bot_id);
        outputSerializedData.writeInt64(this.icon);
        outputSerializedData.writeString(this.description);
    }
}
