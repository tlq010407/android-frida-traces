package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$updateColor extends TLObject {
    public long background_emoji_id;
    public int color;
    public int flags;
    public boolean for_profile;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(2096079197);
        int i = this.for_profile ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeInt32(this.color);
        }
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt64(this.background_emoji_id);
        }
    }
}
