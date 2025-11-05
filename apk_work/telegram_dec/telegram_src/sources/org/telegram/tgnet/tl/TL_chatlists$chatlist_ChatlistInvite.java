package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_contacts_found$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_chatlists$chatlist_ChatlistInvite extends TLObject {
    public static TL_chatlists$chatlist_ChatlistInvite TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_chatlists$chatlist_ChatlistInvite tL_chatlists$TL_chatlists_chatlistInviteAlready = i != -250687953 ? i != -91752871 ? i != 500007837 ? null : new TL_chatlists$TL_chatlists_chatlistInvite() { // from class: org.telegram.tgnet.tl.TL_chatlists$TL_chatlists_chatlistInvite_layer195
            @Override // org.telegram.tgnet.tl.TL_chatlists$TL_chatlists_chatlistInvite, org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                this.flags = inputSerializedData2.readInt32(z2);
                TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
                this.title = tL_textWithEntities;
                tL_textWithEntities.text = inputSerializedData2.readString(z2);
                if ((this.flags & 1) > 0) {
                    this.emoticon = inputSerializedData2.readString(z2);
                }
                this.peers = Vector.deserialize(inputSerializedData2, new TLRPC$TL_contacts_found$$ExternalSyntheticLambda0(), z2);
                this.chats = Vector.deserialize(inputSerializedData2, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z2);
                this.users = Vector.deserialize(inputSerializedData2, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z2);
            }

            @Override // org.telegram.tgnet.tl.TL_chatlists$TL_chatlists_chatlistInvite, org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(500007837);
                outputSerializedData.writeInt32(this.flags);
                this.title.serializeToStream(outputSerializedData);
                if ((this.flags & 1) > 0) {
                    outputSerializedData.writeString(this.emoticon);
                }
                Vector.serialize(outputSerializedData, this.peers);
                Vector.serialize(outputSerializedData, this.chats);
                Vector.serialize(outputSerializedData, this.users);
            }
        } : new TL_chatlists$TL_chatlists_chatlistInviteAlready() : new TL_chatlists$TL_chatlists_chatlistInvite();
        if (tL_chatlists$TL_chatlists_chatlistInviteAlready == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in chatlist_ChatlistInvite", Integer.valueOf(i)));
        }
        if (tL_chatlists$TL_chatlists_chatlistInviteAlready != null) {
            tL_chatlists$TL_chatlists_chatlistInviteAlready.readParams(inputSerializedData, z);
        }
        return tL_chatlists$TL_chatlists_chatlistInviteAlready;
    }
}
