package org.telegram.tgnet.tl;

import org.telegram.messenger.LiteMode;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stars$SavedStarGift extends TLObject {
    public int can_export_at;
    public int can_resell_at;
    public int can_transfer_at;
    public boolean can_upgrade;
    public long convert_stars;
    public int date;
    public int flags;
    public TLRPC.Peer from_id;
    public TL_stars$StarGift gift;
    public TLRPC.TL_textWithEntities message;
    public int msg_id;
    public boolean name_hidden;
    public boolean pinned_to_top;
    public boolean refunded;
    public long saved_id;
    public long transfer_stars;
    public boolean unsaved;
    public long upgrade_stars;

    public static TL_stars$SavedStarGift TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stars$TL_savedStarGift tL_stars$TL_savedStarGift = i != -539360103 ? i != 1616305061 ? null : new TL_stars$TL_savedStarGift() { // from class: org.telegram.tgnet.tl.TL_stars$TL_savedStarGift_layer202
            @Override // org.telegram.tgnet.tl.TL_stars$TL_savedStarGift, org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                int int32 = inputSerializedData2.readInt32(z2);
                this.flags = int32;
                this.name_hidden = (int32 & 1) != 0;
                this.unsaved = (int32 & 32) != 0;
                this.refunded = (int32 & LiteMode.FLAG_CALLS_ANIMATIONS) != 0;
                this.can_upgrade = (int32 & 1024) != 0;
                this.pinned_to_top = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0;
                if ((int32 & 2) != 0) {
                    this.from_id = TLRPC.Peer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                }
                this.date = inputSerializedData2.readInt32(z2);
                this.gift = TL_stars$StarGift.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                if ((this.flags & 4) != 0) {
                    this.message = TLRPC.TL_textWithEntities.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                }
                if ((this.flags & 8) != 0) {
                    this.msg_id = inputSerializedData2.readInt32(z2);
                }
                if ((this.flags & 2048) != 0) {
                    this.saved_id = inputSerializedData2.readInt64(z2);
                }
                if ((this.flags & 16) != 0) {
                    this.convert_stars = inputSerializedData2.readInt64(z2);
                }
                if ((this.flags & 64) != 0) {
                    this.upgrade_stars = inputSerializedData2.readInt64(z2);
                }
                if ((this.flags & 128) != 0) {
                    this.can_export_at = inputSerializedData2.readInt32(z2);
                }
                if ((this.flags & 256) != 0) {
                    this.transfer_stars = inputSerializedData2.readInt64(z2);
                }
            }

            @Override // org.telegram.tgnet.tl.TL_stars$TL_savedStarGift, org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(1616305061);
                int i2 = this.name_hidden ? this.flags | 1 : this.flags & (-2);
                this.flags = i2;
                int i3 = this.unsaved ? i2 | 32 : i2 & (-33);
                this.flags = i3;
                int i4 = this.refunded ? i3 | LiteMode.FLAG_CALLS_ANIMATIONS : i3 & (-513);
                this.flags = i4;
                int i5 = this.can_upgrade ? i4 | 1024 : i4 & (-1025);
                this.flags = i5;
                int i6 = this.pinned_to_top ? i5 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i5 & (-4097);
                this.flags = i6;
                outputSerializedData.writeInt32(i6);
                if ((this.flags & 2) != 0) {
                    this.from_id.serializeToStream(outputSerializedData);
                }
                outputSerializedData.writeInt32(this.date);
                this.gift.serializeToStream(outputSerializedData);
                if ((this.flags & 4) != 0) {
                    this.message.serializeToStream(outputSerializedData);
                }
                if ((this.flags & 8) != 0) {
                    outputSerializedData.writeInt32(this.msg_id);
                }
                if ((this.flags & 2048) != 0) {
                    outputSerializedData.writeInt64(this.saved_id);
                }
                if ((this.flags & 16) != 0) {
                    outputSerializedData.writeInt64(this.convert_stars);
                }
                if ((this.flags & 64) != 0) {
                    outputSerializedData.writeInt64(this.upgrade_stars);
                }
                if ((this.flags & 128) != 0) {
                    outputSerializedData.writeInt32(this.can_export_at);
                }
                if ((this.flags & 256) != 0) {
                    outputSerializedData.writeInt64(this.transfer_stars);
                }
            }
        } : new TL_stars$TL_savedStarGift();
        if (tL_stars$TL_savedStarGift == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in SavedStarGift", Integer.valueOf(i)));
        }
        if (tL_stars$TL_savedStarGift != null) {
            tL_stars$TL_savedStarGift.readParams(inputSerializedData, z);
        }
        return tL_stars$TL_savedStarGift;
    }
}
