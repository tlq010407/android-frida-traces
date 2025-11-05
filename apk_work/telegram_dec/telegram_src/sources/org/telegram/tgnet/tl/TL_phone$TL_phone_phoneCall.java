package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$TL_phone_phoneCall extends TLObject {
    public TL_phone$PhoneCall phone_call;
    public ArrayList users = new ArrayList();

    public static TL_phone$TL_phone_phoneCall TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-326966976 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_phone_phoneCall", Integer.valueOf(i)));
            }
            return null;
        }
        TL_phone$TL_phone_phoneCall tL_phone$TL_phone_phoneCall = new TL_phone$TL_phone_phoneCall();
        tL_phone$TL_phone_phoneCall.readParams(inputSerializedData, z);
        return tL_phone$TL_phone_phoneCall;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.phone_call = TL_phone$PhoneCall.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-326966976);
        this.phone_call.serializeToStream(outputSerializedData);
        Vector.serialize(outputSerializedData, this.users);
    }
}
