package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_geoPointAddress extends TLObject {
    public String city;
    public String country_iso2;
    public int flags;
    public String state;
    public String street;

    public static TL_stories$TL_geoPointAddress TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-565420653 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_geoPointAddress", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_geoPointAddress tL_stories$TL_geoPointAddress = new TL_stories$TL_geoPointAddress();
        tL_stories$TL_geoPointAddress.readParams(inputSerializedData, z);
        return tL_stories$TL_geoPointAddress;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.country_iso2 = inputSerializedData.readString(z);
        if ((this.flags & 1) != 0) {
            this.state = inputSerializedData.readString(z);
        }
        if ((this.flags & 2) != 0) {
            this.city = inputSerializedData.readString(z);
        }
        if ((this.flags & 4) != 0) {
            this.street = inputSerializedData.readString(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-565420653);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeString(this.country_iso2);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.state);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.city);
        }
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeString(this.street);
        }
    }

    public String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("geo{country=");
        sb.append(this.country_iso2);
        sb.append(", ");
        String str3 = "";
        if (this.state != null) {
            str = "state=" + this.state + ", ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.city != null) {
            str2 = "city=" + this.city + ", ";
        } else {
            str2 = "";
        }
        sb.append(str2);
        if (this.street != null) {
            str3 = "street=" + this.street;
        }
        sb.append(str3);
        sb.append("}");
        return sb.toString();
    }
}
