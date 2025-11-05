package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_mediaAreaGeoPoint extends TL_stories$MediaArea {
    public TL_stories$TL_geoPointAddress address;
    public TLRPC.GeoPoint geo;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.coordinates = TL_stories$MediaAreaCoordinates.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.geo = TLRPC.GeoPoint.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        if ((this.flags & 1) != 0) {
            this.address = TL_stories$TL_geoPointAddress.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-891992787);
        outputSerializedData.writeInt32(this.flags);
        this.coordinates.serializeToStream(outputSerializedData);
        this.geo.serializeToStream(outputSerializedData);
        if ((this.flags & 1) != 0) {
            this.address.serializeToStream(outputSerializedData);
        }
    }
}
