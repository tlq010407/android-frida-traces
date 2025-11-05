package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_mediaAreaVenue extends TL_stories$MediaArea {
    public String address;
    public TLRPC.GeoPoint geo;
    public String provider;
    public String title;
    public String venue_id;
    public String venue_type;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.coordinates = TL_stories$MediaAreaCoordinates.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.geo = TLRPC.GeoPoint.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.title = inputSerializedData.readString(z);
        this.address = inputSerializedData.readString(z);
        this.provider = inputSerializedData.readString(z);
        this.venue_id = inputSerializedData.readString(z);
        this.venue_type = inputSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1098720356);
        this.coordinates.serializeToStream(outputSerializedData);
        this.geo.serializeToStream(outputSerializedData);
        outputSerializedData.writeString(this.title);
        outputSerializedData.writeString(this.address);
        outputSerializedData.writeString(this.provider);
        outputSerializedData.writeString(this.venue_id);
        outputSerializedData.writeString(this.venue_type);
    }
}
