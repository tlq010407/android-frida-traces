package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_account$Password extends TLObject {
    public TLRPC.PasswordKdfAlgo current_algo;
    public String email_unconfirmed_pattern;
    public int flags;
    public boolean has_password;
    public boolean has_recovery;
    public boolean has_secure_values;
    public String hint;
    public String login_email_pattern;
    public TLRPC.PasswordKdfAlgo new_algo;
    public TLRPC.SecurePasswordKdfAlgo new_secure_algo;
    public int pending_reset_date;
    public byte[] secure_random;
    public byte[] srp_B;
    public long srp_id;

    public static TL_account$Password TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_account$Password tL_account$TL_password = i != -1787080453 ? i != 408623183 ? null : new TL_account$Password() { // from class: org.telegram.tgnet.tl.TL_account$TL_password_layer144
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                int int32 = inputSerializedData2.readInt32(z2);
                this.flags = int32;
                this.has_recovery = (int32 & 1) != 0;
                this.has_secure_values = (int32 & 2) != 0;
                int i2 = int32 & 4;
                this.has_password = i2 != 0;
                if (i2 != 0) {
                    this.current_algo = TLRPC.PasswordKdfAlgo.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                }
                if ((this.flags & 4) != 0) {
                    this.srp_B = inputSerializedData2.readByteArray(z2);
                }
                if ((this.flags & 4) != 0) {
                    this.srp_id = inputSerializedData2.readInt64(z2);
                }
                if ((this.flags & 8) != 0) {
                    this.hint = inputSerializedData2.readString(z2);
                }
                if ((this.flags & 16) != 0) {
                    this.email_unconfirmed_pattern = inputSerializedData2.readString(z2);
                }
                this.new_algo = TLRPC.PasswordKdfAlgo.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                this.new_secure_algo = TLRPC.SecurePasswordKdfAlgo.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                this.secure_random = inputSerializedData2.readByteArray(z2);
                if ((this.flags & 32) != 0) {
                    this.pending_reset_date = inputSerializedData2.readInt32(z2);
                }
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(408623183);
                int i2 = this.has_recovery ? this.flags | 1 : this.flags & (-2);
                this.flags = i2;
                int i3 = this.has_secure_values ? i2 | 2 : i2 & (-3);
                this.flags = i3;
                int i4 = this.has_password ? i3 | 4 : i3 & (-5);
                this.flags = i4;
                outputSerializedData.writeInt32(i4);
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
            }
        } : new TL_account$TL_password();
        if (tL_account$TL_password == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in account_Password", Integer.valueOf(i)));
        }
        if (tL_account$TL_password != null) {
            tL_account$TL_password.readParams(inputSerializedData, z);
        }
        return tL_account$TL_password;
    }
}
