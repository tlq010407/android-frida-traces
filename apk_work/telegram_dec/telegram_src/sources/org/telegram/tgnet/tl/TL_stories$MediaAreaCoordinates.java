package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stories$MediaAreaCoordinates extends TLObject {
    public int flags;
    public double h;
    public double radius;
    public double rotation;
    public double w;
    public double x;
    public double y;

    public static TL_stories$MediaAreaCoordinates TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stories$MediaAreaCoordinates tL_stories$TL_mediaAreaCoordinates = i != -808853502 ? i != 64088654 ? null : new TL_stories$MediaAreaCoordinates() { // from class: org.telegram.tgnet.tl.TL_stories$TL_mediaAreaCoordinates_layer181
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                this.x = inputSerializedData2.readDouble(z2);
                this.y = inputSerializedData2.readDouble(z2);
                this.w = inputSerializedData2.readDouble(z2);
                this.h = inputSerializedData2.readDouble(z2);
                this.rotation = inputSerializedData2.readDouble(z2);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(64088654);
                outputSerializedData.writeDouble(this.x);
                outputSerializedData.writeDouble(this.y);
                outputSerializedData.writeDouble(this.w);
                outputSerializedData.writeDouble(this.h);
                outputSerializedData.writeDouble(this.rotation);
            }
        } : new TL_stories$TL_mediaAreaCoordinates();
        if (tL_stories$TL_mediaAreaCoordinates == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in MediaAreaCoordinates", Integer.valueOf(i)));
        }
        if (tL_stories$TL_mediaAreaCoordinates != null) {
            tL_stories$TL_mediaAreaCoordinates.readParams(inputSerializedData, z);
        }
        return tL_stories$TL_mediaAreaCoordinates;
    }
}
