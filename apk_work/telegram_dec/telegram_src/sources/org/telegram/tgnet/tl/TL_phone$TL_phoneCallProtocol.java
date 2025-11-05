package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$TL_phoneCallProtocol extends TL_phone$PhoneCallProtocol {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.udp_p2p = (int32 & 1) != 0;
        this.udp_reflector = (int32 & 2) != 0;
        this.min_layer = inputSerializedData.readInt32(z);
        this.max_layer = inputSerializedData.readInt32(z);
        this.library_versions = Vector.deserializeString(inputSerializedData, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-58224696);
        int i = this.udp_p2p ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.udp_reflector ? i | 2 : i & (-3);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
        outputSerializedData.writeInt32(this.min_layer);
        outputSerializedData.writeInt32(this.max_layer);
        Vector.serializeString(outputSerializedData, this.library_versions);
    }
}
