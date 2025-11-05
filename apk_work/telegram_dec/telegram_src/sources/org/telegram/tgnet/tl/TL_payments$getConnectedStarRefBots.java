package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_payments$getConnectedStarRefBots extends TLObject {
    public int flags;
    public int limit;
    public int offset_date;
    public String offset_link;
    public TLRPC.InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_payments$connectedStarRefBots.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1483318611);
        outputSerializedData.writeInt32(this.flags);
        this.peer.serializeToStream(outputSerializedData);
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeInt32(this.offset_date);
            outputSerializedData.writeString(this.offset_link);
        }
        outputSerializedData.writeInt32(this.limit);
    }
}
