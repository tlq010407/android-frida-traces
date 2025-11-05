package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_payments_getStarsTransactions extends TLObject {
    public boolean ascending;
    public int flags;
    public boolean inbound;
    public int limit = 50;
    public String offset;
    public boolean outbound;
    public TLRPC.InputPeer peer;
    public String subscription_id;
    public boolean ton;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stars$StarsStatus.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1775912279);
        int flag = TLRPC.setFlag(this.flags, 1, this.inbound);
        this.flags = flag;
        int flag2 = TLRPC.setFlag(flag, 2, this.outbound);
        this.flags = flag2;
        int flag3 = TLRPC.setFlag(flag2, 4, this.ascending);
        this.flags = flag3;
        int flag4 = TLRPC.setFlag(flag3, 8, this.subscription_id != null);
        this.flags = flag4;
        int flag5 = TLRPC.setFlag(flag4, 16, this.ton);
        this.flags = flag5;
        outputSerializedData.writeInt32(flag5);
        if (TLRPC.hasFlag(this.flags, 8)) {
            outputSerializedData.writeString(this.subscription_id);
        }
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeString(this.offset);
        outputSerializedData.writeInt32(this.limit);
    }
}
