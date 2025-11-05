package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_updatePrivacy$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$privacyRules extends TLObject {
    public ArrayList rules = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_account$privacyRules TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (1352683077 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_account_privacyRules", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$privacyRules tL_account$privacyRules = new TL_account$privacyRules();
        tL_account$privacyRules.readParams(inputSerializedData, z);
        return tL_account$privacyRules;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.rules = Vector.deserialize(inputSerializedData, new TLRPC$TL_updatePrivacy$$ExternalSyntheticLambda0(), z);
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1352683077);
        Vector.serialize(outputSerializedData, this.rules);
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
    }
}
