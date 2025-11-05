package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$updateConnectedBot extends TLObject {
    public TLRPC.InputUser bot;
    public boolean deleted;
    public int flags;
    public TL_account$TL_inputBusinessBotRecipients recipients;
    public TL_account$TL_businessBotRights rights;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1721797758);
        int i = this.deleted ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        int i2 = this.rights != null ? i | 1 : i & (-2);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
        if ((this.flags & 1) != 0) {
            this.rights.serializeToStream(outputSerializedData);
        }
        this.bot.serializeToStream(outputSerializedData);
        this.recipients.serializeToStream(outputSerializedData);
    }
}
