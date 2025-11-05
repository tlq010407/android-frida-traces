package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_businessAwayMessage extends TLObject {
    public int flags;
    public boolean offline_only;
    public TL_account$TL_businessRecipients recipients;
    public TL_account$BusinessAwayMessageSchedule schedule;
    public int shortcut_id;

    public static TL_account$TL_businessAwayMessage TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != -283809188) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_businessAwayMessage", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$TL_businessAwayMessage tL_account$TL_businessAwayMessage = new TL_account$TL_businessAwayMessage();
        tL_account$TL_businessAwayMessage.readParams(inputSerializedData, z);
        return tL_account$TL_businessAwayMessage;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.offline_only = (int32 & 1) != 0;
        this.shortcut_id = inputSerializedData.readInt32(z);
        this.schedule = TL_account$BusinessAwayMessageSchedule.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.recipients = TL_account$TL_businessRecipients.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-283809188);
        int i = this.offline_only ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        outputSerializedData.writeInt32(this.shortcut_id);
        this.schedule.serializeToStream(outputSerializedData);
        this.recipients.serializeToStream(outputSerializedData);
    }
}
