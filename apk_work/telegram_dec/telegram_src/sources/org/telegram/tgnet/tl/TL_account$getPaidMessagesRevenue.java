package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$getPaidMessagesRevenue extends TLObject {
    public int flags;
    public TLRPC.InputPeer parent_peer;
    public TLRPC.InputUser user_id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_account$paidMessagesRevenue.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(431639143);
        int i = this.parent_peer != null ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        if ((this.flags & 1) != 0) {
            this.parent_peer.serializeToStream(outputSerializedData);
        }
        this.user_id.serializeToStream(outputSerializedData);
    }
}
