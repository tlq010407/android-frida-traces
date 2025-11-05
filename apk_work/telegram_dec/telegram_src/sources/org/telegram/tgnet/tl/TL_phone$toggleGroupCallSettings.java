package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$toggleGroupCallSettings extends TLObject {
    public TLRPC.InputGroupCall call;
    public int flags;
    public boolean join_muted;
    public boolean reset_invite_hash;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1958458429);
        int i = this.reset_invite_hash ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        this.call.serializeToStream(outputSerializedData);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeBool(this.join_muted);
        }
    }
}
