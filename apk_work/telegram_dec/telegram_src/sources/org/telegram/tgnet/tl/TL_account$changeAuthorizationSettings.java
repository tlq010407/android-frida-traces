package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$changeAuthorizationSettings extends TLObject {
    public boolean call_requests_disabled;
    public boolean confirmed;
    public boolean encrypted_requests_disabled;
    public int flags;
    public long hash;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1089766498);
        int i = this.confirmed ? this.flags | 8 : this.flags & (-9);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        outputSerializedData.writeInt64(this.hash);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeBool(this.encrypted_requests_disabled);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeBool(this.call_requests_disabled);
        }
    }
}
