package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_password extends TL_account$Password {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.has_recovery = (int32 & 1) != 0;
        this.has_secure_values = (int32 & 2) != 0;
        int i = int32 & 4;
        this.has_password = i != 0;
        if (i != 0) {
            this.current_algo = TLRPC.PasswordKdfAlgo.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & 4) != 0) {
            this.srp_B = inputSerializedData.readByteArray(z);
        }
        if ((this.flags & 4) != 0) {
            this.srp_id = inputSerializedData.readInt64(z);
        }
        if ((this.flags & 8) != 0) {
            this.hint = inputSerializedData.readString(z);
        }
        if ((this.flags & 16) != 0) {
            this.email_unconfirmed_pattern = inputSerializedData.readString(z);
        }
        this.new_algo = TLRPC.PasswordKdfAlgo.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.new_secure_algo = TLRPC.SecurePasswordKdfAlgo.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.secure_random = inputSerializedData.readByteArray(z);
        if ((this.flags & 32) != 0) {
            this.pending_reset_date = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 64) != 0) {
            this.login_email_pattern = inputSerializedData.readString(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1787080453);
        int i = this.has_recovery ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.has_secure_values ? i | 2 : i & (-3);
        this.flags = i2;
        int i3 = this.has_password ? i2 | 4 : i2 & (-5);
        this.flags = i3;
        outputSerializedData.writeInt32(i3);
        if ((this.flags & 4) != 0) {
            this.current_algo.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeByteArray(this.srp_B);
        }
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeInt64(this.srp_id);
        }
        if ((this.flags & 8) != 0) {
            outputSerializedData.writeString(this.hint);
        }
        if ((this.flags & 16) != 0) {
            outputSerializedData.writeString(this.email_unconfirmed_pattern);
        }
        this.new_algo.serializeToStream(outputSerializedData);
        this.new_secure_algo.serializeToStream(outputSerializedData);
        outputSerializedData.writeByteArray(this.secure_random);
        if ((this.flags & 32) != 0) {
            outputSerializedData.writeInt32(this.pending_reset_date);
        }
        if ((this.flags & 64) != 0) {
            outputSerializedData.writeString(this.login_email_pattern);
        }
    }
}
