package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$updateStarRefProgram extends TLObject {
    public TLRPC.InputUser bot;
    public int commission_permille;
    public int duration_months;
    public int flags;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_payments$starRefProgram.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(2005621427);
        outputSerializedData.writeInt32(this.flags);
        this.bot.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.commission_permille);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt32(this.duration_months);
        }
    }
}
