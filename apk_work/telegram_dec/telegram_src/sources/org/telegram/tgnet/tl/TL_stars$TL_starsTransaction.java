package org.telegram.tgnet.tl;

import org.telegram.messenger.FileLoaderPriorityQueue;
import org.telegram.messenger.LiteMode;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_starsTransaction extends TL_stars$StarsTransaction {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.refund = (int32 & 8) != 0;
        this.pending = (int32 & 16) != 0;
        this.failed = (int32 & 64) != 0;
        this.gift = (int32 & 1024) != 0;
        this.reaction = (int32 & 2048) != 0;
        this.subscription = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0;
        this.floodskip = (int32 & LiteMode.FLAG_CHAT_SCALE) != 0;
        this.stargift_upgrade = (262144 & int32) != 0;
        this.paid_message = (int32 & 524288) != 0;
        this.premium_gift = (int32 & FileLoaderPriorityQueue.PRIORITY_VALUE_MAX) != 0;
        this.business_transfer = (2097152 & int32) != 0;
        this.stargift_resale = (int32 & 4194304) != 0;
        this.id = inputSerializedData.readString(z);
        this.amount = TL_stars$StarsAmount.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.date = inputSerializedData.readInt32(z);
        this.peer = TL_stars$StarsTransactionPeer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        if ((this.flags & 1) != 0) {
            this.title = inputSerializedData.readString(z);
        }
        if ((this.flags & 2) != 0) {
            this.description = inputSerializedData.readString(z);
        }
        if ((this.flags & 4) != 0) {
            this.photo = TLRPC.WebDocument.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & 32) != 0) {
            this.transaction_date = inputSerializedData.readInt32(z);
            this.transaction_url = inputSerializedData.readString(z);
        }
        if ((this.flags & 128) != 0) {
            this.bot_payload = inputSerializedData.readByteArray(z);
        }
        if ((this.flags & 256) != 0) {
            this.msg_id = inputSerializedData.readInt32(z);
        }
        if ((this.flags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
            this.extended_media = Vector.deserialize(inputSerializedData, new TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0(), z);
        }
        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0) {
            this.subscription_period = inputSerializedData.readInt32(z);
        }
        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0) {
            this.giveaway_post_id = inputSerializedData.readInt32(z);
        }
        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
            this.stargift = TL_stars$StarGift.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
            this.floodskip_number = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 65536) != 0) {
            this.starref_commission_permille = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 131072) != 0) {
            this.starref_peer = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.starref_amount = TL_stars$StarsAmount.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & 524288) != 0) {
            this.paid_messages = inputSerializedData.readInt32(z);
        }
        if ((this.flags & FileLoaderPriorityQueue.PRIORITY_VALUE_MAX) != 0) {
            this.premium_gift_months = inputSerializedData.readInt32(z);
        }
        if (TLRPC.hasFlag(this.flags, 8388608)) {
            this.ads_proceeds_from_date = inputSerializedData.readInt32(z);
            this.ads_proceeds_to_date = inputSerializedData.readInt32(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(325426864);
        int i = this.refund ? this.flags | 8 : this.flags & (-9);
        this.flags = i;
        int i2 = this.pending ? i | 16 : i & (-17);
        this.flags = i2;
        int i3 = this.failed ? i2 | 64 : i2 & (-65);
        this.flags = i3;
        int i4 = this.gift ? i3 | 1024 : i3 & (-1025);
        this.flags = i4;
        int i5 = this.reaction ? i4 | 2048 : i4 & (-2049);
        this.flags = i5;
        int i6 = this.subscription ? i5 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i5 & (-4097);
        this.flags = i6;
        int i7 = this.floodskip ? i6 | LiteMode.FLAG_CHAT_SCALE : i6 & (-32769);
        this.flags = i7;
        int i8 = this.stargift_upgrade ? i7 | 262144 : i7 & (-262145);
        this.flags = i8;
        int i9 = this.paid_message ? i8 | 524288 : i8 & (-524289);
        this.flags = i9;
        int i10 = this.premium_gift ? i9 | FileLoaderPriorityQueue.PRIORITY_VALUE_MAX : i9 & (-1048577);
        this.flags = i10;
        int i11 = this.business_transfer ? i10 | 2097152 : i10 & (-2097153);
        this.flags = i11;
        int i12 = this.stargift_resale ? i11 | 4194304 : i11 & (-4194305);
        this.flags = i12;
        outputSerializedData.writeInt32(i12);
        this.amount.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.date);
        this.peer.serializeToStream(outputSerializedData);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.title);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.description);
        }
        if ((this.flags & 4) != 0) {
            this.photo.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 32) != 0) {
            outputSerializedData.writeInt32(this.transaction_date);
            outputSerializedData.writeString(this.transaction_url);
        }
        if ((this.flags & 128) != 0) {
            outputSerializedData.writeByteArray(this.bot_payload);
        }
        if ((this.flags & 256) != 0) {
            outputSerializedData.writeInt32(this.msg_id);
        }
        if ((this.flags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
            Vector.serialize(outputSerializedData, this.extended_media);
        }
        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0) {
            outputSerializedData.writeInt32(this.subscription_period);
        }
        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0) {
            outputSerializedData.writeInt32(this.giveaway_post_id);
        }
        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
            this.stargift.serializeToStream(outputSerializedData);
        }
        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
            outputSerializedData.writeInt32(this.floodskip_number);
        }
        if ((this.flags & 65536) != 0) {
            outputSerializedData.writeInt32(this.starref_commission_permille);
        }
        if ((this.flags & 131072) != 0) {
            this.starref_peer.serializeToStream(outputSerializedData);
            this.starref_amount.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 524288) != 0) {
            outputSerializedData.writeInt32(this.paid_messages);
        }
        if ((this.flags & FileLoaderPriorityQueue.PRIORITY_VALUE_MAX) != 0) {
            outputSerializedData.writeInt32(this.premium_gift_months);
        }
        if (TLRPC.hasFlag(this.flags, 8388608)) {
            outputSerializedData.writeInt32(this.ads_proceeds_from_date);
            outputSerializedData.writeInt32(this.ads_proceeds_to_date);
        }
    }
}
