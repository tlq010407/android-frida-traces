package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$toggleNoPaidMessagesException extends TLObject {
    public int flags;
    public TLRPC.InputPeer parent_peer;
    public boolean refund_charged;
    public boolean require_payment;
    public TLRPC.InputUser user_id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-30483850);
        int i = this.refund_charged ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.parent_peer != null ? i | 2 : i & (-3);
        this.flags = i2;
        int i3 = this.require_payment ? i2 | 4 : i2 & (-5);
        this.flags = i3;
        outputSerializedData.writeInt32(i3);
        if ((this.flags & 2) != 0) {
            this.parent_peer.serializeToStream(outputSerializedData);
        }
        this.user_id.serializeToStream(outputSerializedData);
    }
}
