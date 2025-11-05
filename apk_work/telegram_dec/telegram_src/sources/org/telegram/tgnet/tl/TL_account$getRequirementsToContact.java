package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowUsers$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$getRequirementsToContact extends TLObject {
    public ArrayList id = new ArrayList();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return Vector.TLDeserialize(inputSerializedData, i, z, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_account$getRequirementsToContact$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i2, boolean z2) {
                return TL_account$RequirementToContact.TLdeserialize(inputSerializedData2, i2, z2);
            }
        });
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.id = Vector.deserialize(inputSerializedData, new TLRPC$TL_inputPrivacyValueAllowUsers$$ExternalSyntheticLambda0(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-660962397);
        Vector.serialize(outputSerializedData, this.id);
    }
}
