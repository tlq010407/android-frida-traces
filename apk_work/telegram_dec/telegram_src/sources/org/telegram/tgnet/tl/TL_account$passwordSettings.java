package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$passwordSettings extends TLObject {
    public String email;
    public int flags;
    public TLRPC.TL_secureSecretSettings secure_settings;

    public static TL_account$passwordSettings TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1705233435 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_account_passwordSettings", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$passwordSettings tL_account$passwordSettings = new TL_account$passwordSettings();
        tL_account$passwordSettings.readParams(inputSerializedData, z);
        return tL_account$passwordSettings;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        if ((int32 & 1) != 0) {
            this.email = inputSerializedData.readString(z);
        }
        if ((this.flags & 2) != 0) {
            this.secure_settings = TLRPC.TL_secureSecretSettings.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1705233435);
        outputSerializedData.writeInt32(this.flags);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.email);
        }
        if ((this.flags & 2) != 0) {
            this.secure_settings.serializeToStream(outputSerializedData);
        }
    }
}
