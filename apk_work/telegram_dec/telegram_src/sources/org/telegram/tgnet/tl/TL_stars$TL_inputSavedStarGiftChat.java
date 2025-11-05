package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class TL_stars$TL_inputSavedStarGiftChat extends TL_stars$InputSavedStarGift {
    public TLRPC.InputPeer peer;
    public long saved_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.peer = TLRPC.InputPeer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.saved_id = inputSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-251549057);
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt64(this.saved_id);
    }
}
