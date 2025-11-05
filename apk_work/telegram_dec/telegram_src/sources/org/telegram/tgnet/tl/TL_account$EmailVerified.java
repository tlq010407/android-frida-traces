package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_account$EmailVerified extends TLObject {
    public static TL_account$EmailVerified TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_account$EmailVerified tL_account$TL_emailVerifiedLogin = i != -507835039 ? i != 731303195 ? null : new TL_account$EmailVerified() { // from class: org.telegram.tgnet.tl.TL_account$TL_emailVerified
            public String email;

            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                this.email = inputSerializedData2.readString(z2);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(731303195);
                outputSerializedData.writeString(this.email);
            }
        } : new TL_account$TL_emailVerifiedLogin();
        if (tL_account$TL_emailVerifiedLogin == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in account_EmailVerified", Integer.valueOf(i)));
        }
        if (tL_account$TL_emailVerifiedLogin != null) {
            tL_account$TL_emailVerifiedLogin.readParams(inputSerializedData, z);
        }
        return tL_account$TL_emailVerifiedLogin;
    }
}
