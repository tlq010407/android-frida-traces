package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$reportProfilePhoto extends TLObject {
    public String message;
    public TLRPC.InputPeer peer;
    public TLRPC.InputPhoto photo_id;
    public TLRPC.ReportReason reason;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-91437323);
        this.peer.serializeToStream(outputSerializedData);
        this.photo_id.serializeToStream(outputSerializedData);
        this.reason.serializeToStream(outputSerializedData);
        outputSerializedData.writeString(this.message);
    }
}
