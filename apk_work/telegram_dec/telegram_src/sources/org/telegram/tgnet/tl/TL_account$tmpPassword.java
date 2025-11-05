package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$tmpPassword extends TLObject {
    public byte[] tmp_password;
    public int valid_until;

    public static TL_account$tmpPassword TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-614138572 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_account_tmpPassword", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$tmpPassword tL_account$tmpPassword = new TL_account$tmpPassword();
        tL_account$tmpPassword.readParams(inputSerializedData, z);
        return tL_account$tmpPassword;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.tmp_password = inputSerializedData.readByteArray(z);
        this.valid_until = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-614138572);
        outputSerializedData.writeByteArray(this.tmp_password);
        outputSerializedData.writeInt32(this.valid_until);
    }
}
