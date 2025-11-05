package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$setCustomVerification extends TLObject {
    public TLRPC.InputUser bot;
    public String custom_description;
    public boolean enabled;
    public int flags;
    public TLRPC.InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1953898563);
        int i = this.enabled ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        if ((this.flags & 1) != 0) {
            this.bot.serializeToStream(outputSerializedData);
        }
        this.peer.serializeToStream(outputSerializedData);
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeString(this.custom_description);
        }
    }
}
