package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$toggleGroupCallRecord extends TLObject {
    public TLRPC.InputGroupCall call;
    public int flags;
    public boolean start;
    public String title;
    public boolean video;
    public boolean video_portrait;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-248985848);
        int i = this.start ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.video ? i | 4 : i & (-5);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
        this.call.serializeToStream(outputSerializedData);
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.title);
        }
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeBool(this.video_portrait);
        }
    }
}
