package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda40;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$resolvedBusinessChatLinks extends TLObject {
    public int flags;
    public String message;
    public TLRPC.Peer peer;
    public ArrayList entities = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_account$resolvedBusinessChatLinks TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1708937439 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_account_businessChatLinks", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$resolvedBusinessChatLinks tL_account$resolvedBusinessChatLinks = new TL_account$resolvedBusinessChatLinks();
        tL_account$resolvedBusinessChatLinks.readParams(inputSerializedData, z);
        return tL_account$resolvedBusinessChatLinks;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.peer = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.message = inputSerializedData.readString(z);
        if ((this.flags & 1) != 0) {
            this.entities = Vector.deserialize(inputSerializedData, new MessagesStorage$$ExternalSyntheticLambda40(), z);
        }
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1708937439);
        outputSerializedData.writeInt32(this.flags);
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeString(this.message);
        if ((this.flags & 1) != 0) {
            Vector.serialize(outputSerializedData, this.entities);
        }
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
    }
}
