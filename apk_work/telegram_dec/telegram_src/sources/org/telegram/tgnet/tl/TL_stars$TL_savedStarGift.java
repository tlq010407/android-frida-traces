package org.telegram.tgnet.tl;

import org.telegram.messenger.LiteMode;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_savedStarGift extends TL_stars$SavedStarGift {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.name_hidden = (int32 & 1) != 0;
        this.unsaved = (int32 & 32) != 0;
        this.refunded = (int32 & LiteMode.FLAG_CALLS_ANIMATIONS) != 0;
        this.can_upgrade = (int32 & 1024) != 0;
        this.pinned_to_top = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0;
        if ((int32 & 2) != 0) {
            this.from_id = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        this.date = inputSerializedData.readInt32(z);
        this.gift = TL_stars$StarGift.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        if ((this.flags & 4) != 0) {
            this.message = TLRPC.TL_textWithEntities.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & 8) != 0) {
            this.msg_id = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 2048) != 0) {
            this.saved_id = inputSerializedData.readInt64(z);
        }
        if ((this.flags & 16) != 0) {
            this.convert_stars = inputSerializedData.readInt64(z);
        }
        if ((this.flags & 64) != 0) {
            this.upgrade_stars = inputSerializedData.readInt64(z);
        }
        if ((this.flags & 128) != 0) {
            this.can_export_at = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 256) != 0) {
            this.transfer_stars = inputSerializedData.readInt64(z);
        }
        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0) {
            this.can_transfer_at = inputSerializedData.readInt32(z);
        }
        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
            this.can_resell_at = inputSerializedData.readInt32(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-539360103);
        int i = this.name_hidden ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.unsaved ? i | 32 : i & (-33);
        this.flags = i2;
        int i3 = this.refunded ? i2 | LiteMode.FLAG_CALLS_ANIMATIONS : i2 & (-513);
        this.flags = i3;
        int i4 = this.can_upgrade ? i3 | 1024 : i3 & (-1025);
        this.flags = i4;
        int i5 = this.pinned_to_top ? i4 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i4 & (-4097);
        this.flags = i5;
        outputSerializedData.writeInt32(i5);
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
        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0) {
            outputSerializedData.writeInt32(this.can_transfer_at);
        }
        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
            outputSerializedData.writeInt32(this.can_resell_at);
        }
    }
}
