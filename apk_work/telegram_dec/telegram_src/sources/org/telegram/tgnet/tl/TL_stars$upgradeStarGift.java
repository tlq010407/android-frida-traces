package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$upgradeStarGift extends TLObject {
    public int flags;
    public boolean keep_original_details;
    public TL_stars$InputSavedStarGift stargift;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1361648395);
        int i = this.keep_original_details ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        this.stargift.serializeToStream(outputSerializedData);
    }
}
