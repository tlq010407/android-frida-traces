package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stats$TL_getStoryPublicForwards extends TLObject {
    public int id;
    public int limit;
    public String offset;
    public TLRPC.InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stats$TL_publicForwards.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1505526026);
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.id);
        outputSerializedData.writeString(this.offset);
        outputSerializedData.writeInt32(this.limit);
    }
}
