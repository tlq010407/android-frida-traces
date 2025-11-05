package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stories$Boost extends TLObject {
    public int date;
    public int expires;
    public int flags;
    public boolean gift;
    public boolean giveaway;
    public int giveaway_msg_id;
    public String id;
    public int multiplier;
    public long stars;
    public boolean unclaimed;
    public String used_gift_slug;
    public long user_id = -1;

    public static TL_stories$Boost TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stories$TL_boost tL_stories$TL_boost = i != 706514033 ? i != 1262359766 ? null : new TL_stories$TL_boost() : new TL_stories$TL_boost() { // from class: org.telegram.tgnet.tl.TL_stories$TL_boost_layer186
            @Override // org.telegram.tgnet.tl.TL_stories$TL_boost, org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                int int32 = inputSerializedData2.readInt32(z2);
                this.flags = int32;
                this.gift = (int32 & 2) != 0;
                this.giveaway = (int32 & 4) != 0;
                this.unclaimed = (int32 & 8) != 0;
                this.id = inputSerializedData2.readString(z2);
                if ((this.flags & 1) != 0) {
                    this.user_id = inputSerializedData2.readInt64(z2);
                }
                if ((this.flags & 4) != 0) {
                    this.giveaway_msg_id = inputSerializedData2.readInt32(z2);
                }
                this.date = inputSerializedData2.readInt32(z2);
                this.expires = inputSerializedData2.readInt32(z2);
                if ((this.flags & 16) != 0) {
                    this.used_gift_slug = inputSerializedData2.readString(z2);
                }
                if ((this.flags & 32) != 0) {
                    this.multiplier = inputSerializedData2.readInt32(z2);
                }
            }

            @Override // org.telegram.tgnet.tl.TL_stories$TL_boost, org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(706514033);
                int i2 = this.gift ? this.flags | 2 : this.flags & (-3);
                this.flags = i2;
                int i3 = this.giveaway ? i2 | 4 : i2 & (-5);
                this.flags = i3;
                int i4 = this.unclaimed ? i3 | 8 : i3 & (-9);
                this.flags = i4;
                outputSerializedData.writeInt32(i4);
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
            }
        };
        if (tL_stories$TL_boost == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in Boost", Integer.valueOf(i)));
        }
        if (tL_stories$TL_boost != null) {
            tL_stories$TL_boost.readParams(inputSerializedData, z);
        }
        return tL_stories$TL_boost;
    }
}
