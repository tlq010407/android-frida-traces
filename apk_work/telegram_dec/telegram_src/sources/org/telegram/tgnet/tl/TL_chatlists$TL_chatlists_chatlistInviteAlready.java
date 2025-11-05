package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_contacts_found$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_chatlists$TL_chatlists_chatlistInviteAlready extends TL_chatlists$chatlist_ChatlistInvite {
    public int filter_id;
    public ArrayList missing_peers = new ArrayList();
    public ArrayList already_peers = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.filter_id = inputSerializedData.readInt32(z);
        this.missing_peers = Vector.deserialize(inputSerializedData, new TLRPC$TL_contacts_found$$ExternalSyntheticLambda0(), z);
        this.already_peers = Vector.deserialize(inputSerializedData, new TLRPC$TL_contacts_found$$ExternalSyntheticLambda0(), z);
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-91752871);
        outputSerializedData.writeInt32(this.filter_id);
        Vector.serialize(outputSerializedData, this.missing_peers);
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
    }
}
