package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$exportedGroupCallInvite extends TLObject {
    public String link;

    public static TL_phone$exportedGroupCallInvite TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (541839704 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_phone_exportedGroupCallInvite", Integer.valueOf(i)));
            }
            return null;
        }
        TL_phone$exportedGroupCallInvite tL_phone$exportedGroupCallInvite = new TL_phone$exportedGroupCallInvite();
        tL_phone$exportedGroupCallInvite.readParams(inputSerializedData, z);
        return tL_phone$exportedGroupCallInvite;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.link = inputSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(541839704);
        outputSerializedData.writeString(this.link);
    }
}
