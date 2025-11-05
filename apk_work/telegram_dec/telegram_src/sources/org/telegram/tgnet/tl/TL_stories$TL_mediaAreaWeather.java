package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_mediaAreaWeather extends TL_stories$MediaArea {
    public int color;
    public String emoji;
    public double temperature_c;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.coordinates = TL_stories$MediaAreaCoordinates.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.emoji = inputSerializedData.readString(z);
        this.temperature_c = inputSerializedData.readDouble(z);
        this.color = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1235637404);
        this.coordinates.serializeToStream(outputSerializedData);
        outputSerializedData.writeString(this.emoji);
        outputSerializedData.writeDouble(this.temperature_c);
        outputSerializedData.writeInt32(this.color);
    }
}
