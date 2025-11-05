package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_starGiftUnique extends TL_stars$StarGift {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.id = inputSerializedData.readInt64(z);
        this.title = inputSerializedData.readString(z);
        this.slug = inputSerializedData.readString(z);
        this.num = inputSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.owner_id = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & 2) != 0) {
            this.owner_name = inputSerializedData.readString(z);
        }
        if ((this.flags & 4) != 0) {
            this.owner_address = inputSerializedData.readString(z);
        }
        this.attributes = Vector.deserialize(inputSerializedData, new TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda0(), z);
        this.availability_issued = inputSerializedData.readInt32(z);
        this.availability_total = inputSerializedData.readInt32(z);
        if ((this.flags & 8) != 0) {
            this.gift_address = inputSerializedData.readString(z);
        }
        if ((this.flags & 16) != 0) {
            this.resell_stars = inputSerializedData.readInt64(z);
        }
        if ((this.flags & 32) != 0) {
            this.released_by = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-164136786);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeInt64(this.id);
        outputSerializedData.writeString(this.title);
        outputSerializedData.writeString(this.slug);
        outputSerializedData.writeInt32(this.num);
        if ((this.flags & 1) != 0) {
            this.owner_id.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.owner_name);
        }
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeString(this.owner_address);
        }
        Vector.serialize(outputSerializedData, this.attributes);
        outputSerializedData.writeInt32(this.availability_issued);
        outputSerializedData.writeInt32(this.availability_total);
        if ((this.flags & 8) != 0) {
            outputSerializedData.writeString(this.gift_address);
        }
        if ((this.flags & 16) != 0) {
            outputSerializedData.writeInt64(this.resell_stars);
        }
        if ((this.flags & 32) != 0) {
            this.released_by.serializeToStream(outputSerializedData);
        }
    }
}
