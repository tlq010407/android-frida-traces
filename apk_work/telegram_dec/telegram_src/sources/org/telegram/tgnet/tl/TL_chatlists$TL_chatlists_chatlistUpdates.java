package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_contacts_found$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_chatlists$TL_chatlists_chatlistUpdates extends TLObject {
    public ArrayList missing_peers = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_chatlists$TL_chatlists_chatlistUpdates TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1816295539 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_chatlists_chatlistUpdates", Integer.valueOf(i)));
            }
            return null;
        }
        TL_chatlists$TL_chatlists_chatlistUpdates tL_chatlists$TL_chatlists_chatlistUpdates = new TL_chatlists$TL_chatlists_chatlistUpdates();
        tL_chatlists$TL_chatlists_chatlistUpdates.readParams(inputSerializedData, z);
        return tL_chatlists$TL_chatlists_chatlistUpdates;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.missing_peers = Vector.deserialize(inputSerializedData, new TLRPC$TL_contacts_found$$ExternalSyntheticLambda0(), z);
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1816295539);
        Vector.serialize(outputSerializedData, this.missing_peers);
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
    }
}
