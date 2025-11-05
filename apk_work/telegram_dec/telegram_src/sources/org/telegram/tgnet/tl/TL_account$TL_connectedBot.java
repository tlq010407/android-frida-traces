package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_connectedBot extends TLObject {
    public long bot_id;
    public int flags;
    public TL_account$TL_businessBotRecipients recipients;
    public TL_account$TL_businessBotRights rights;

    public static TL_account$TL_connectedBot TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != -849058964) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_connectedBot", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$TL_connectedBot tL_account$TL_connectedBot = new TL_account$TL_connectedBot();
        tL_account$TL_connectedBot.readParams(inputSerializedData, z);
        return tL_account$TL_connectedBot;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.bot_id = inputSerializedData.readInt64(z);
        this.recipients = TL_account$TL_businessBotRecipients.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.rights = TL_account$TL_businessBotRights.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-849058964);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeInt64(this.bot_id);
        this.recipients.serializeToStream(outputSerializedData);
        this.rights.serializeToStream(outputSerializedData);
    }
}
