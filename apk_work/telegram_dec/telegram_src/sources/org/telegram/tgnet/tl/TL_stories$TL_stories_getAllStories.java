package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_stories_getAllStories extends TLObject {
    public int flags;
    public boolean include_hidden;
    public boolean next;
    public String state;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stories$stories_AllStories.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-290400731);
        int i = this.next ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        int i2 = this.include_hidden ? i | 4 : i & (-5);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.state);
        }
    }
}
