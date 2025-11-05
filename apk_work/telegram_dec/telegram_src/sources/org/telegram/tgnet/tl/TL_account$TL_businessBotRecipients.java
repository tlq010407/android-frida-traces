package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_businessBotRecipients extends TLObject {
    public boolean contacts;
    public boolean exclude_selected;
    public boolean existing_chats;
    public int flags;
    public boolean new_chats;
    public boolean non_contacts;
    public ArrayList users = new ArrayList();
    public ArrayList exclude_users = new ArrayList();

    public static TL_account$TL_businessBotRecipients TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != -1198722189) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_businessBotRecipients", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$TL_businessBotRecipients tL_account$TL_businessBotRecipients = new TL_account$TL_businessBotRecipients();
        tL_account$TL_businessBotRecipients.readParams(inputSerializedData, z);
        return tL_account$TL_businessBotRecipients;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.existing_chats = (int32 & 1) != 0;
        this.new_chats = (int32 & 2) != 0;
        this.contacts = (int32 & 4) != 0;
        this.non_contacts = (int32 & 8) != 0;
        this.exclude_selected = (int32 & 32) != 0;
        if ((int32 & 16) != 0) {
            this.users = Vector.deserializeLong(inputSerializedData, z);
        }
        if ((this.flags & 64) != 0) {
            this.exclude_users = Vector.deserializeLong(inputSerializedData, z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1198722189);
        int i = this.existing_chats ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.new_chats ? i | 2 : i & (-3);
        this.flags = i2;
        int i3 = this.contacts ? i2 | 4 : i2 & (-5);
        this.flags = i3;
        int i4 = this.non_contacts ? i3 | 8 : i3 & (-9);
        this.flags = i4;
        int i5 = this.exclude_selected ? i4 | 32 : i4 & (-33);
        this.flags = i5;
        outputSerializedData.writeInt32(i5);
        if ((this.flags & 16) != 0) {
            Vector.serializeLong(outputSerializedData, this.users);
        }
        if ((this.flags & 64) != 0) {
            Vector.serializeLong(outputSerializedData, this.exclude_users);
        }
    }
}
