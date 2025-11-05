package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_chatlists$TL_chatlists_editExportedInvite extends TLObject {
    public TL_chatlists$TL_inputChatlistDialogFilter chatlist;
    public int flags;
    public ArrayList peers = new ArrayList();
    public boolean revoked;
    public String slug;
    public String title;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_chatlists$TL_exportedChatlistInvite.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1698543165);
        int i = this.revoked ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        this.chatlist.serializeToStream(outputSerializedData);
        outputSerializedData.writeString(this.slug);
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.title);
        }
        if ((this.flags & 4) != 0) {
            Vector.serialize(outputSerializedData, this.peers);
        }
    }
}
