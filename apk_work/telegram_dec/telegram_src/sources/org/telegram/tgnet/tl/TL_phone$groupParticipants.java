package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_updateGroupCallParticipants$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$groupParticipants extends TLObject {
    public int count;
    public String next_offset;
    public int version;
    public ArrayList participants = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_phone$groupParticipants TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-193506890 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_phone_groupParticipants", Integer.valueOf(i)));
            }
            return null;
        }
        TL_phone$groupParticipants tL_phone$groupParticipants = new TL_phone$groupParticipants();
        tL_phone$groupParticipants.readParams(inputSerializedData, z);
        return tL_phone$groupParticipants;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.count = inputSerializedData.readInt32(z);
        this.participants = Vector.deserialize(inputSerializedData, new TLRPC$TL_updateGroupCallParticipants$$ExternalSyntheticLambda0(), z);
        this.next_offset = inputSerializedData.readString(z);
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
        this.version = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-193506890);
        outputSerializedData.writeInt32(this.count);
        Vector.serialize(outputSerializedData, this.participants);
        outputSerializedData.writeString(this.next_offset);
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
        outputSerializedData.writeInt32(this.version);
    }
}
