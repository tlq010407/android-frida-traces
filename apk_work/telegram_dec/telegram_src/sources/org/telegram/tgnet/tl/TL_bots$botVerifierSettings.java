package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$botVerifierSettings extends TLObject {
    public boolean can_modify_custom_description;
    public String company;
    public String custom_description;
    public int flags;
    public long icon;

    public static TL_bots$botVerifierSettings TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1328716265 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_bots.botVerifierSettings", Integer.valueOf(i)));
            }
            return null;
        }
        TL_bots$botVerifierSettings tL_bots$botVerifierSettings = new TL_bots$botVerifierSettings();
        tL_bots$botVerifierSettings.readParams(inputSerializedData, z);
        return tL_bots$botVerifierSettings;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.can_modify_custom_description = (int32 & 2) != 0;
        this.icon = inputSerializedData.readInt64(z);
        this.company = inputSerializedData.readString(z);
        if ((this.flags & 1) != 0) {
            this.custom_description = inputSerializedData.readString(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1328716265);
        int i = this.can_modify_custom_description ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        outputSerializedData.writeString(this.company);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.custom_description);
        }
    }
}
