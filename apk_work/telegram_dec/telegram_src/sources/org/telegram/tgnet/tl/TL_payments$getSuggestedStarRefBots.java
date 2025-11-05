package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_payments$getSuggestedStarRefBots extends TLObject {
    public int flags;
    public int limit;
    public String offset;
    public boolean order_by_date;
    public boolean order_by_revenue;
    public TLRPC.InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_payments$suggestedStarRefBots.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(225134839);
        int i = this.order_by_revenue ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.order_by_date ? i | 2 : i & (-3);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeString(this.offset);
        outputSerializedData.writeInt32(this.limit);
    }
}
