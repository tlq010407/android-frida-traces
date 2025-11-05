package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_boost extends TL_stories$Boost {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.gift = (int32 & 2) != 0;
        this.giveaway = (int32 & 4) != 0;
        this.unclaimed = (int32 & 8) != 0;
        this.id = inputSerializedData.readString(z);
        if ((this.flags & 1) != 0) {
            this.user_id = inputSerializedData.readInt64(z);
        }
        if ((this.flags & 4) != 0) {
            this.giveaway_msg_id = inputSerializedData.readInt32(z);
        }
        this.date = inputSerializedData.readInt32(z);
        this.expires = inputSerializedData.readInt32(z);
        if ((this.flags & 16) != 0) {
            this.used_gift_slug = inputSerializedData.readString(z);
        }
        if ((this.flags & 32) != 0) {
            this.multiplier = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 64) != 0) {
            this.stars = inputSerializedData.readInt64(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1262359766);
        int i = this.gift ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        int i2 = this.giveaway ? i | 4 : i & (-5);
        this.flags = i2;
        int i3 = this.unclaimed ? i2 | 8 : i2 & (-9);
        this.flags = i3;
        outputSerializedData.writeInt32(i3);
        outputSerializedData.writeString(this.id);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt64(this.user_id);
        }
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeInt32(this.giveaway_msg_id);
        }
        outputSerializedData.writeInt32(this.date);
        outputSerializedData.writeInt32(this.expires);
        if ((this.flags & 16) != 0) {
            outputSerializedData.writeString(this.used_gift_slug);
        }
        if ((this.flags & 32) != 0) {
            outputSerializedData.writeInt32(this.multiplier);
        }
        if ((this.flags & 64) != 0) {
            outputSerializedData.writeInt64(this.stars);
        }
    }
}
