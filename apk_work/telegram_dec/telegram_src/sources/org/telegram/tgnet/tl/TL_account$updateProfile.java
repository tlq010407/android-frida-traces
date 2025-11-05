package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$updateProfile extends TLObject {
    public String about;
    public String first_name;
    public int flags;
    public String last_name;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.User.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(2018596725);
        outputSerializedData.writeInt32(this.flags);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.first_name);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.last_name);
        }
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeString(this.about);
        }
    }
}
