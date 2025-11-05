package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_account$RequirementToContact extends TLObject {
    public static TL_account$RequirementToContact TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_account$RequirementToContact tL_account$requirementToContactPremium = i != -1258914157 ? i != -444472087 ? i != 84580409 ? null : new TL_account$RequirementToContact() { // from class: org.telegram.tgnet.tl.TL_account$requirementToContactEmpty
            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(84580409);
            }
        } : new TL_account$requirementToContactPremium() : new TL_account$requirementToContactPaidMessages();
        if (tL_account$requirementToContactPremium == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in RequirementToContact", Integer.valueOf(i)));
        }
        if (tL_account$requirementToContactPremium != null) {
            tL_account$requirementToContactPremium.readParams(inputSerializedData, z);
        }
        return tL_account$requirementToContactPremium;
    }
}
