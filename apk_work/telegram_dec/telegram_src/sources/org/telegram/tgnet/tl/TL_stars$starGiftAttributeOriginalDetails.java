package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$starGiftAttributeOriginalDetails extends TL_stars$StarGiftAttribute {
    public int date;
    public int flags;
    public TLRPC.TL_textWithEntities message;
    public TLRPC.Peer recipient_id;
    public TLRPC.Peer sender_id;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        if ((int32 & 1) != 0) {
            this.sender_id = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        this.recipient_id = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.date = inputSerializedData.readInt32(z);
        if ((this.flags & 2) != 0) {
            this.message = TLRPC.TL_textWithEntities.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-524291476);
        outputSerializedData.writeInt32(this.flags);
        if ((this.flags & 1) != 0) {
            this.sender_id.serializeToStream(outputSerializedData);
        }
        this.recipient_id.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.date);
        if ((this.flags & 2) != 0) {
            this.message.serializeToStream(outputSerializedData);
        }
    }
}
