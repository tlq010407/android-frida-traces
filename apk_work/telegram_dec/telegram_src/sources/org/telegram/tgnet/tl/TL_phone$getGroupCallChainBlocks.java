package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$getGroupCallChainBlocks extends TLObject {
    public TLRPC.InputGroupCall call;
    public int limit;
    public int offset;
    public int sub_chain_id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-291534682);
        this.call.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.sub_chain_id);
        outputSerializedData.writeInt32(this.offset);
        outputSerializedData.writeInt32(this.limit);
    }
}
