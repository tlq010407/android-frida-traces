package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$contentSettings extends TLObject {
    public int flags;
    public boolean sensitive_can_change;
    public boolean sensitive_enabled;

    public static TL_account$contentSettings TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (1474462241 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_account.contentSettings", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$contentSettings tL_account$contentSettings = new TL_account$contentSettings();
        tL_account$contentSettings.readParams(inputSerializedData, z);
        return tL_account$contentSettings;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.sensitive_enabled = (int32 & 1) != 0;
        this.sensitive_can_change = (int32 & 2) != 0;
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1474462241);
        int i = this.sensitive_enabled ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.sensitive_can_change ? i | 2 : i & (-3);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
    }
}
