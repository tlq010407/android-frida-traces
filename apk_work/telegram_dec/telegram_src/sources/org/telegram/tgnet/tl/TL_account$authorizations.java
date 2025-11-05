package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$authorizations extends TLObject {
    public int authorization_ttl_days;
    public ArrayList authorizations = new ArrayList();

    public static TL_account$authorizations TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (1275039392 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_account_authorizations", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$authorizations tL_account$authorizations = new TL_account$authorizations();
        tL_account$authorizations.readParams(inputSerializedData, z);
        return tL_account$authorizations;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.authorization_ttl_days = inputSerializedData.readInt32(z);
        this.authorizations = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_account$authorizations$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TLRPC.TL_authorization.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1275039392);
        outputSerializedData.writeInt32(this.authorization_ttl_days);
        Vector.serialize(outputSerializedData, this.authorizations);
    }
}
