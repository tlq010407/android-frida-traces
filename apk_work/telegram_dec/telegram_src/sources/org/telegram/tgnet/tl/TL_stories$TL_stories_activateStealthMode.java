package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_stories_activateStealthMode extends TLObject {
    public int flags;
    public boolean future;
    public boolean past;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1471926630);
        int i = this.past ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.future ? i | 2 : i & (-3);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
    }
}
