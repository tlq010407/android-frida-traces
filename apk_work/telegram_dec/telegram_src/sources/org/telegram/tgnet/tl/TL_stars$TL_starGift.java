package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_starGift extends TL_stars$StarGift {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.limited = (int32 & 1) != 0;
        this.sold_out = (int32 & 2) != 0;
        this.birthday = (int32 & 4) != 0;
        this.can_upgrade = (int32 & 8) != 0;
        this.id = inputSerializedData.readInt64(z);
        this.sticker = TLRPC.Document.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.stars = inputSerializedData.readInt64(z);
        if ((this.flags & 1) != 0) {
            this.availability_remains = inputSerializedData.readInt32(z);
            this.availability_total = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 16) != 0) {
            this.availability_resale = inputSerializedData.readInt64(z);
        }
        this.convert_stars = inputSerializedData.readInt64(z);
        if ((this.flags & 2) != 0) {
            this.first_sale_date = inputSerializedData.readInt32(z);
            this.last_sale_date = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 8) != 0) {
            this.upgrade_stars = inputSerializedData.readInt64(z);
        }
        if ((this.flags & 16) != 0) {
            this.resell_min_stars = inputSerializedData.readInt64(z);
        }
        if ((this.flags & 32) != 0) {
            this.title = inputSerializedData.readString(z);
        }
        if ((this.flags & 64) != 0) {
            this.released_by = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(2139438098);
        int i = this.limited ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.sold_out ? i | 2 : i & (-3);
        this.flags = i2;
        int i3 = this.birthday ? i2 | 4 : i2 & (-5);
        this.flags = i3;
        int i4 = this.can_upgrade ? i3 | 8 : i3 & (-9);
        this.flags = i4;
        outputSerializedData.writeInt32(i4);
        outputSerializedData.writeInt64(this.id);
        this.sticker.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt64(this.stars);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt32(this.availability_remains);
            outputSerializedData.writeInt32(this.availability_total);
        }
        if ((this.flags & 16) != 0) {
            outputSerializedData.writeInt64(this.availability_resale);
        }
        outputSerializedData.writeInt64(this.convert_stars);
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeInt32(this.first_sale_date);
            outputSerializedData.writeInt32(this.last_sale_date);
        }
        if ((this.flags & 8) != 0) {
            outputSerializedData.writeInt64(this.upgrade_stars);
        }
        if ((this.flags & 16) != 0) {
            outputSerializedData.writeInt64(this.resell_min_stars);
        }
        if ((this.flags & 32) != 0) {
            outputSerializedData.writeString(this.title);
        }
        if ((this.flags & 64) != 0) {
            this.released_by.serializeToStream(outputSerializedData);
        }
    }
}
