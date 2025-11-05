package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$updateBusinessLocation extends TLObject {
    public String address;
    public int flags;
    public TLRPC.InputGeoPoint geo_point;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1637149926);
        outputSerializedData.writeInt32(this.flags);
        if ((this.flags & 2) != 0) {
            this.geo_point.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.address);
        }
    }
}
