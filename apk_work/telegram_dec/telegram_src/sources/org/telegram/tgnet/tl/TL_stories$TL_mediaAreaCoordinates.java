package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_mediaAreaCoordinates extends TL_stories$MediaAreaCoordinates {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.x = inputSerializedData.readDouble(z);
        this.y = inputSerializedData.readDouble(z);
        this.w = inputSerializedData.readDouble(z);
        this.h = inputSerializedData.readDouble(z);
        this.rotation = inputSerializedData.readDouble(z);
        if ((this.flags & 1) != 0) {
            this.radius = inputSerializedData.readDouble(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-808853502);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeDouble(this.x);
        outputSerializedData.writeDouble(this.y);
        outputSerializedData.writeDouble(this.w);
        outputSerializedData.writeDouble(this.h);
        outputSerializedData.writeDouble(this.rotation);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeDouble(this.radius);
        }
    }
}
