package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_getStarsSubscriptions extends TLObject {
    public int flags;
    public boolean missing_balance;
    public String offset;
    public TLRPC.InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stars$StarsStatus.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(52761285);
        int i = this.missing_balance ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeString(this.offset);
    }
}
