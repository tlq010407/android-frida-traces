package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$registerDevice extends TLObject {
    public boolean app_sandbox;
    public int flags;
    public boolean no_muted;
    public ArrayList other_uids = new ArrayList();
    public byte[] secret;
    public String token;
    public int token_type;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-326762118);
        int i = this.no_muted ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        outputSerializedData.writeInt32(this.token_type);
        outputSerializedData.writeString(this.token);
        outputSerializedData.writeBool(this.app_sandbox);
        outputSerializedData.writeByteArray(this.secret);
        Vector.serializeLong(outputSerializedData, this.other_uids);
    }
}
