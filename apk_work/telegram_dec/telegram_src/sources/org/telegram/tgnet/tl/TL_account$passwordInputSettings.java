package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$passwordInputSettings extends TLObject {
    public String email;
    public int flags;
    public String hint;
    public TLRPC.PasswordKdfAlgo new_algo;
    public byte[] new_password_hash;
    public TLRPC.TL_secureSecretSettings new_secure_settings;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        if ((int32 & 1) != 0) {
            this.new_algo = TLRPC.PasswordKdfAlgo.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & 1) != 0) {
            this.new_password_hash = inputSerializedData.readByteArray(z);
        }
        if ((this.flags & 1) != 0) {
            this.hint = inputSerializedData.readString(z);
        }
        if ((this.flags & 2) != 0) {
            this.email = inputSerializedData.readString(z);
        }
        if ((this.flags & 4) != 0) {
            this.new_secure_settings = TLRPC.TL_secureSecretSettings.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1036572727);
        outputSerializedData.writeInt32(this.flags);
        if ((this.flags & 1) != 0) {
            this.new_algo.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeByteArray(this.new_password_hash);
        }
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.hint);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.email);
        }
        if ((this.flags & 4) != 0) {
            this.new_secure_settings.serializeToStream(outputSerializedData);
        }
    }
}
