package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$requestCall extends TLObject {
    public int flags;
    public byte[] g_a_hash;
    public TL_phone$TL_phoneCallProtocol protocol;
    public int random_id;
    public TLRPC.InputUser user_id;
    public boolean video;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_phone$TL_phone_phoneCall.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1124046573);
        int i = this.video ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        this.user_id.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.random_id);
        outputSerializedData.writeByteArray(this.g_a_hash);
        this.protocol.serializeToStream(outputSerializedData);
    }
}
