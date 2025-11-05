package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_chatlists$TL_chatlists_exportedInvites extends TLObject {
    public ArrayList invites = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_chatlists$TL_chatlists_exportedInvites TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (279670215 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_chatlists_exportedInvites", Integer.valueOf(i)));
            }
            return null;
        }
        TL_chatlists$TL_chatlists_exportedInvites tL_chatlists$TL_chatlists_exportedInvites = new TL_chatlists$TL_chatlists_exportedInvites();
        tL_chatlists$TL_chatlists_exportedInvites.readParams(inputSerializedData, z);
        return tL_chatlists$TL_chatlists_exportedInvites;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.invites = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_chatlists$TL_chatlists_exportedInvites$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_chatlists$TL_exportedChatlistInvite.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(279670215);
        Vector.serialize(outputSerializedData, this.invites);
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
    }
}
