package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$webAuthorizations extends TLObject {
    public ArrayList authorizations = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_account$webAuthorizations TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-313079300 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_account_webAuthorizations", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$webAuthorizations tL_account$webAuthorizations = new TL_account$webAuthorizations();
        tL_account$webAuthorizations.readParams(inputSerializedData, z);
        return tL_account$webAuthorizations;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.authorizations = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_account$webAuthorizations$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TLRPC.TL_webAuthorization.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-313079300);
        Vector.serialize(outputSerializedData, this.authorizations);
        Vector.serialize(outputSerializedData, this.users);
    }
}
