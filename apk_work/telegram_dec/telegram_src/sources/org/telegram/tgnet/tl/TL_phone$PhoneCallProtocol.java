package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_phone$PhoneCallProtocol extends TLObject {
    public int flags;
    public ArrayList library_versions = new ArrayList();
    public int max_layer;
    public int min_layer;
    public boolean udp_p2p;
    public boolean udp_reflector;

    public static TL_phone$PhoneCallProtocol TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_phone$TL_phoneCallProtocol tL_phone$TL_phoneCallProtocol = i != -1564789301 ? i != -58224696 ? null : new TL_phone$TL_phoneCallProtocol() : new TL_phone$TL_phoneCallProtocol() { // from class: org.telegram.tgnet.tl.TL_phone$TL_phoneCallProtocol_layer110
            @Override // org.telegram.tgnet.tl.TL_phone$TL_phoneCallProtocol, org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                int int32 = inputSerializedData2.readInt32(z2);
                this.flags = int32;
                this.udp_p2p = (int32 & 1) != 0;
                this.udp_reflector = (int32 & 2) != 0;
                this.min_layer = inputSerializedData2.readInt32(z2);
                this.max_layer = inputSerializedData2.readInt32(z2);
            }

            @Override // org.telegram.tgnet.tl.TL_phone$TL_phoneCallProtocol, org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-1564789301);
                int i2 = this.udp_p2p ? this.flags | 1 : this.flags & (-2);
                this.flags = i2;
                int i3 = this.udp_reflector ? i2 | 2 : i2 & (-3);
                this.flags = i3;
                outputSerializedData.writeInt32(i3);
                outputSerializedData.writeInt32(this.min_layer);
                outputSerializedData.writeInt32(this.max_layer);
            }
        };
        if (tL_phone$TL_phoneCallProtocol == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in PhoneCallProtocol", Integer.valueOf(i)));
        }
        if (tL_phone$TL_phoneCallProtocol != null) {
            tL_phone$TL_phoneCallProtocol.readParams(inputSerializedData, z);
        }
        return tL_phone$TL_phoneCallProtocol;
    }
}
