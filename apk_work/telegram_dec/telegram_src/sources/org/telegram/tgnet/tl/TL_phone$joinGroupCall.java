package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$joinGroupCall extends TLObject {
    public byte[] block;
    public TLRPC.InputGroupCall call;
    public int flags;
    public String invite_hash;
    public TLRPC.InputPeer join_as;
    public boolean muted;
    public TLRPC.TL_dataJSON params;
    public byte[] public_key;
    public boolean video_stopped;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1883951017);
        int i = this.muted ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.video_stopped ? i | 4 : i & (-5);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
        this.call.serializeToStream(outputSerializedData);
        this.join_as.serializeToStream(outputSerializedData);
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.invite_hash);
        }
        if ((this.flags & 8) != 0) {
            outputSerializedData.writeBytes(this.public_key);
            outputSerializedData.writeByteArray(this.block);
        }
        this.params.serializeToStream(outputSerializedData);
    }
}
