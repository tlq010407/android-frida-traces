package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_chatlists$TL_chatlists_exportChatlistInvite extends TLObject {
    public TL_chatlists$TL_inputChatlistDialogFilter chatlist;
    public ArrayList peers = new ArrayList();
    public String title;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_chatlists$TL_chatlists_exportedChatlistInvite.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-2072885362);
        this.chatlist.serializeToStream(outputSerializedData);
        outputSerializedData.writeString(this.title);
        Vector.serialize(outputSerializedData, this.peers);
    }
}
