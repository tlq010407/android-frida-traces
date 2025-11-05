package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$confirmCall extends TLObject {
    public byte[] g_a;
    public long key_fingerprint;
    public TLRPC.TL_inputPhoneCall peer;
    public TL_phone$TL_phoneCallProtocol protocol;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_phone$TL_phone_phoneCall.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(788404002);
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeByteArray(this.g_a);
        outputSerializedData.writeInt64(this.key_fingerprint);
        this.protocol.serializeToStream(outputSerializedData);
    }
}
