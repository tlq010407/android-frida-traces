package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$deleteConferenceCallParticipants extends TLObject {
    public byte[] block;
    public TLRPC.InputGroupCall call;
    public int flags;
    public ArrayList ids = new ArrayList();
    public boolean kick;
    public boolean only_left;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1935276763);
        int i = this.only_left ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.kick ? i | 2 : i & (-3);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
        this.call.serializeToStream(outputSerializedData);
        Vector.serializeLong(outputSerializedData, this.ids);
        outputSerializedData.writeByteArray(this.block);
    }
}
