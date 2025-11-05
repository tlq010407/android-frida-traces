package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_payments$starRefProgram extends TLObject {
    public long bot_id;
    public int commission_permille;
    public TL_stars$StarsAmount daily_revenue_per_user = TL_stars$StarsAmount.ofStars(0);
    public int duration_months;
    public int end_date;
    public int flags;

    public static TL_payments$starRefProgram TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-586389774 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_payments.starRefProgram", Integer.valueOf(i)));
            }
            return null;
        }
        TL_payments$starRefProgram tL_payments$starRefProgram = new TL_payments$starRefProgram();
        tL_payments$starRefProgram.readParams(inputSerializedData, z);
        return tL_payments$starRefProgram;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.bot_id = inputSerializedData.readInt64(z);
        this.commission_permille = inputSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.duration_months = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 2) != 0) {
            this.end_date = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 4) != 0) {
            this.daily_revenue_per_user = TL_stars$StarsAmount.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-586389774);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeInt64(this.bot_id);
        outputSerializedData.writeInt32(this.commission_permille);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt32(this.duration_months);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeInt32(this.end_date);
        }
        if ((this.flags & 4) != 0) {
            this.daily_revenue_per_user.serializeToStream(outputSerializedData);
        }
    }
}
