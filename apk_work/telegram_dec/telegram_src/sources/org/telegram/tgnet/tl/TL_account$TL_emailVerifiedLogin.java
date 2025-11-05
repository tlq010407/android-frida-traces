package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_emailVerifiedLogin extends TL_account$EmailVerified {
    public String email;
    public TLRPC.auth_SentCode sent_code;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.email = inputSerializedData.readString(z);
        this.sent_code = TLRPC.auth_SentCode.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-507835039);
        outputSerializedData.writeString(this.email);
        this.sent_code.serializeToStream(outputSerializedData);
    }
}
