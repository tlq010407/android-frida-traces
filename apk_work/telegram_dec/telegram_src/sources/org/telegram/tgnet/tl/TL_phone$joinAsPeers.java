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
public class TL_phone$joinAsPeers extends TLObject {
    public ArrayList peers = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_phone$joinAsPeers TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1343921601 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_phone_joinAsPeers", Integer.valueOf(i)));
            }
            return null;
        }
        TL_phone$joinAsPeers tL_phone$joinAsPeers = new TL_phone$joinAsPeers();
        tL_phone$joinAsPeers.readParams(inputSerializedData, z);
        return tL_phone$joinAsPeers;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.peers = Vector.deserialize(inputSerializedData, new TLRPC$TL_contacts_found$$ExternalSyntheticLambda0(), z);
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1343921601);
        Vector.serialize(outputSerializedData, this.peers);
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
    }
}
