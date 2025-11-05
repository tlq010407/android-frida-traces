package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_inputMediaAreaVenue extends TL_stories$MediaArea {
    public long query_id;
    public String result_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.coordinates = TL_stories$MediaAreaCoordinates.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.query_id = inputSerializedData.readInt64(z);
        this.result_id = inputSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1300094593);
        this.coordinates.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt64(this.query_id);
        outputSerializedData.writeString(this.result_id);
    }
}
