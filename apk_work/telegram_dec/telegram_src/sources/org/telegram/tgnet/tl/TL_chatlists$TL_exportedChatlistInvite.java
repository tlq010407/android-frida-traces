package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_contacts_found$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_chatlists$TL_exportedChatlistInvite extends TLObject {
    public int flags;
    public ArrayList peers = new ArrayList();
    public boolean revoked;
    public String title;
    public String url;

    public static TL_chatlists$TL_exportedChatlistInvite TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (206668204 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_exportedChatlistInvite", Integer.valueOf(i)));
            }
            return null;
        }
        TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite = new TL_chatlists$TL_exportedChatlistInvite();
        tL_chatlists$TL_exportedChatlistInvite.readParams(inputSerializedData, z);
        return tL_chatlists$TL_exportedChatlistInvite;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.revoked = (int32 & 1) != 0;
        this.title = inputSerializedData.readString(z);
        this.url = inputSerializedData.readString(z);
        this.peers = Vector.deserialize(inputSerializedData, new TLRPC$TL_contacts_found$$ExternalSyntheticLambda0(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(206668204);
        int i = this.revoked ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        outputSerializedData.writeString(this.title);
        outputSerializedData.writeString(this.url);
        Vector.serialize(outputSerializedData, this.peers);
    }
}
