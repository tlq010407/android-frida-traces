package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stats$TL_statsGraph extends TL_stats$StatsGraph {
    public int flags;
    public TLRPC.TL_dataJSON json;
    public String zoom_token;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.json = TLRPC.TL_dataJSON.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        if ((this.flags & 1) != 0) {
            this.zoom_token = inputSerializedData.readString(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1901828938);
        outputSerializedData.writeInt32(this.flags);
        this.json.serializeToStream(outputSerializedData);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.zoom_token);
        }
    }
}
