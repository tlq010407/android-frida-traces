package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.messenger.BirthdayController;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$contactBirthdays extends TLObject {
    public ArrayList contacts = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_account$contactBirthdays TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != 290452237) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_contacts_contactBirthdays", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$contactBirthdays tL_account$contactBirthdays = new TL_account$contactBirthdays();
        tL_account$contactBirthdays.readParams(inputSerializedData, z);
        return tL_account$contactBirthdays;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.contacts = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_account$contactBirthdays$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_account$TL_contactBirthday.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(BirthdayController.TL_birthdays.constructor);
        Vector.serialize(outputSerializedData, this.contacts);
        Vector.serialize(outputSerializedData, this.users);
    }
}
