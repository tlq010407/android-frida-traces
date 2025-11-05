package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_payments$connectedBotStarRef extends TLObject {
    public long bot_id;
    public int commission_permille;
    public int date;
    public int duration_months;
    public int flags;
    public long participants;
    public long revenue;
    public boolean revoked;
    public String url;

    public static TL_payments$connectedBotStarRef TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (429997937 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_payments.connectedBotStarRef", Integer.valueOf(i)));
            }
            return null;
        }
        TL_payments$connectedBotStarRef tL_payments$connectedBotStarRef = new TL_payments$connectedBotStarRef();
        tL_payments$connectedBotStarRef.readParams(inputSerializedData, z);
        return tL_payments$connectedBotStarRef;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.revoked = (int32 & 2) != 0;
        this.url = inputSerializedData.readString(z);
        this.date = inputSerializedData.readInt32(z);
        this.bot_id = inputSerializedData.readInt64(z);
        this.commission_permille = inputSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.duration_months = inputSerializedData.readInt32(z);
        }
        this.participants = inputSerializedData.readInt64(z);
        this.revenue = inputSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(429997937);
        int i = this.revoked ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        outputSerializedData.writeString(this.url);
        outputSerializedData.writeInt32(this.date);
        outputSerializedData.writeInt64(this.bot_id);
        outputSerializedData.writeInt32(this.commission_permille);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt32(this.duration_months);
        }
        outputSerializedData.writeInt64(this.participants);
        outputSerializedData.writeInt64(this.revenue);
    }
}
