package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$createGroupCall extends TLObject {
    public int flags;
    public TLRPC.InputPeer peer;
    public int random_id;
    public int schedule_date;
    public String title;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1221445336);
        outputSerializedData.writeInt32(this.flags);
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.random_id);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.title);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeInt32(this.schedule_date);
        }
    }
}
