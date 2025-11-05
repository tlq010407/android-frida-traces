package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stats$TL_loadAsyncGraph extends TLObject {
    public int flags;
    public String token;
    public long x;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stats$StatsGraph.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1646092192);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeString(this.token);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt64(this.x);
        }
    }
}
