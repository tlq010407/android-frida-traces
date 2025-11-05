package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$sentEmailCode extends TLObject {
    public String email_pattern;
    public int length;

    public static TL_account$sentEmailCode TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-2128640689 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_account_sentEmailCode", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$sentEmailCode tL_account$sentEmailCode = new TL_account$sentEmailCode();
        tL_account$sentEmailCode.readParams(inputSerializedData, z);
        return tL_account$sentEmailCode;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.email_pattern = inputSerializedData.readString(z);
        this.length = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-2128640689);
        outputSerializedData.writeString(this.email_pattern);
        outputSerializedData.writeInt32(this.length);
    }
}
