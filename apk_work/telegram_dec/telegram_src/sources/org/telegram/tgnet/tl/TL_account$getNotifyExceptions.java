package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$getNotifyExceptions extends TLObject {
    public boolean compare_sound;
    public int flags;
    public TLRPC.InputNotifyPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1398240377);
        int i = this.compare_sound ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        if ((this.flags & 1) != 0) {
            this.peer.serializeToStream(outputSerializedData);
        }
    }
}
