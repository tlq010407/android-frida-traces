package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_secureRequiredTypeOneOf$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$authorizationForm extends TLObject {
    public int flags;
    public String privacy_policy_url;
    public ArrayList required_types = new ArrayList();
    public ArrayList values = new ArrayList();
    public ArrayList errors = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_account$authorizationForm TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1389486888 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_account_authorizationForm", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$authorizationForm tL_account$authorizationForm = new TL_account$authorizationForm();
        tL_account$authorizationForm.readParams(inputSerializedData, z);
        return tL_account$authorizationForm;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.required_types = Vector.deserialize(inputSerializedData, new TLRPC$TL_secureRequiredTypeOneOf$$ExternalSyntheticLambda0(), z);
        this.values = Vector.deserialize(inputSerializedData, new TL_account$authorizationForm$$ExternalSyntheticLambda0(), z);
        this.errors = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_account$authorizationForm$$ExternalSyntheticLambda1
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TLRPC.SecureValueError.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
        if ((this.flags & 1) != 0) {
            this.privacy_policy_url = inputSerializedData.readString(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1389486888);
        outputSerializedData.writeInt32(this.flags);
        Vector.serialize(outputSerializedData, this.required_types);
        Vector.serialize(outputSerializedData, this.values);
        Vector.serialize(outputSerializedData, this.errors);
        Vector.serialize(outputSerializedData, this.users);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.privacy_policy_url);
        }
    }
}
