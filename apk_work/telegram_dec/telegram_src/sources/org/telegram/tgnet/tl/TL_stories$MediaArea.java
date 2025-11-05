package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stories$MediaArea extends TLObject {
    public TL_stories$MediaAreaCoordinates coordinates;
    public boolean dark;
    public int flags;
    public boolean flipped;
    public TLRPC.Reaction reaction;

    public static TL_stories$MediaArea TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stories$MediaArea tL_stories$TL_inputMediaAreaVenue;
        switch (i) {
            case -2057362882:
                tL_stories$TL_inputMediaAreaVenue = new TL_stories$MediaArea() { // from class: org.telegram.tgnet.tl.TL_stories$TL_mediaAreaWeather2
                    public String emoji;
                    public int temperature_c;

                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.dark = (int32 & 1) != 0;
                        this.coordinates = TL_stories$MediaAreaCoordinates.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        this.emoji = inputSerializedData2.readString(z2);
                        this.temperature_c = inputSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-2057362882);
                        int i2 = this.dark ? this.flags | 1 : this.flags & (-2);
                        this.flags = i2;
                        outputSerializedData.writeInt32(i2);
                        this.coordinates.serializeToStream(outputSerializedData);
                        outputSerializedData.writeString(this.emoji);
                        outputSerializedData.writeInt32(this.temperature_c);
                    }
                };
                break;
            case -1300094593:
                tL_stories$TL_inputMediaAreaVenue = new TL_stories$TL_inputMediaAreaVenue();
                break;
            case -1098720356:
                tL_stories$TL_inputMediaAreaVenue = new TL_stories$TL_mediaAreaVenue();
                break;
            case -891992787:
                tL_stories$TL_inputMediaAreaVenue = new TL_stories$TL_mediaAreaGeoPoint();
                break;
            case -544523486:
                tL_stories$TL_inputMediaAreaVenue = new TL_stories$TL_mediaAreaGeoPoint() { // from class: org.telegram.tgnet.tl.TL_stories$TL_mediaAreaGeoPoint_layer181
                    @Override // org.telegram.tgnet.tl.TL_stories$TL_mediaAreaGeoPoint, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        this.coordinates = TL_stories$MediaAreaCoordinates.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        this.geo = TLRPC.GeoPoint.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                    }

                    @Override // org.telegram.tgnet.tl.TL_stories$TL_mediaAreaGeoPoint, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-544523486);
                        this.coordinates.serializeToStream(outputSerializedData);
                        this.geo.serializeToStream(outputSerializedData);
                    }
                };
                break;
            case 340088945:
                tL_stories$TL_inputMediaAreaVenue = new TL_stories$TL_mediaAreaSuggestedReaction();
                break;
            case 577893055:
                tL_stories$TL_inputMediaAreaVenue = new TL_stories$TL_inputMediaAreaChannelPost();
                break;
            case 926421125:
                tL_stories$TL_inputMediaAreaVenue = new TL_stories$TL_mediaAreaUrl();
                break;
            case 1132918857:
                tL_stories$TL_inputMediaAreaVenue = new TL_stories$MediaArea() { // from class: org.telegram.tgnet.tl.TL_stories$TL_mediaAreaWeatherOld
                    public String emoji;
                    public double temperature_c;

                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.dark = (int32 & 1) != 0;
                        this.coordinates = TL_stories$MediaAreaCoordinates.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        this.emoji = inputSerializedData2.readString(z2);
                        this.temperature_c = inputSerializedData2.readDouble(z2);
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(1132918857);
                        int i2 = this.dark ? this.flags | 1 : this.flags & (-2);
                        this.flags = i2;
                        outputSerializedData.writeInt32(i2);
                        this.coordinates.serializeToStream(outputSerializedData);
                        outputSerializedData.writeString(this.emoji);
                        outputSerializedData.writeDouble(this.temperature_c);
                    }
                };
                break;
            case 1235637404:
                tL_stories$TL_inputMediaAreaVenue = new TL_stories$TL_mediaAreaWeather();
                break;
            case 1468491885:
                tL_stories$TL_inputMediaAreaVenue = new TL_stories$TL_mediaAreaStarGift();
                break;
            case 1996756655:
                tL_stories$TL_inputMediaAreaVenue = new TL_stories$TL_mediaAreaChannelPost();
                break;
            default:
                tL_stories$TL_inputMediaAreaVenue = null;
                break;
        }
        if (tL_stories$TL_inputMediaAreaVenue == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in MediaArea", Integer.valueOf(i)));
        }
        if (tL_stories$TL_inputMediaAreaVenue != null) {
            tL_stories$TL_inputMediaAreaVenue.readParams(inputSerializedData, z);
        }
        return tL_stories$TL_inputMediaAreaVenue;
    }
}
