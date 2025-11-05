package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.messenger.FileLoaderPriorityQueue;
import org.telegram.messenger.LiteMode;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$StarsTransaction extends TLObject {
    public int ads_proceeds_from_date;
    public int ads_proceeds_to_date;
    public byte[] bot_payload;
    public boolean business_transfer;
    public int date;
    public String description;
    public boolean failed;
    public int flags;
    public boolean floodskip;
    public int floodskip_number;
    public boolean gift;
    public int giveaway_post_id;
    public String id;
    public int msg_id;
    public boolean paid_message;
    public int paid_messages;
    public TL_stars$StarsTransactionPeer peer;
    public boolean pending;
    public TLRPC.WebDocument photo;
    public boolean premium_gift;
    public int premium_gift_months;
    public boolean reaction;
    public TLRPC.Peer received_by;
    public boolean refund;
    public TLRPC.Peer sent_by;
    public TL_stars$StarGift stargift;
    public boolean stargift_resale;
    public boolean stargift_upgrade;
    public TL_stars$StarsAmount starref_amount;
    public int starref_commission_permille;
    public TLRPC.Peer starref_peer;
    public boolean subscription;
    public int subscription_period;
    public String title;
    public int transaction_date;
    public String transaction_url;
    public TL_stars$StarsAmount amount = TL_stars$StarsAmount.ofStars(0);
    public ArrayList extended_media = new ArrayList();

    public static TL_stars$StarsTransaction TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stars$StarsTransaction tL_stars$TL_starsTransaction;
        switch (i) {
            case -1549805238:
                tL_stars$TL_starsTransaction = new TL_stars$StarsTransaction() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransaction_layer205
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
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
                        this.stargift_resale = (int32 & 4194304) != 0;
                        this.id = inputSerializedData2.readString(z2);
                        this.amount = TL_stars$StarsAmount.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        this.date = inputSerializedData2.readInt32(z2);
                        this.peer = TL_stars$StarsTransactionPeer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 1) != 0) {
                            this.title = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.photo = TLRPC.WebDocument.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.transaction_date = inputSerializedData2.readInt32(z2);
                            this.transaction_url = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 128) != 0) {
                            this.bot_payload = inputSerializedData2.readByteArray(z2);
                        }
                        if ((this.flags & 256) != 0) {
                            this.msg_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
                            this.extended_media = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0) {
                            this.subscription_period = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0) {
                            this.giveaway_post_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
                            this.stargift = TL_stars$StarGift.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
                            this.floodskip_number = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 65536) != 0) {
                            this.starref_commission_permille = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 131072) != 0) {
                            this.starref_peer = TLRPC.Peer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                            this.starref_amount = TL_stars$StarsAmount.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 524288) != 0) {
                            this.paid_messages = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & FileLoaderPriorityQueue.PRIORITY_VALUE_MAX) != 0) {
                            this.premium_gift_months = inputSerializedData2.readInt32(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-1549805238);
                        int i2 = this.refund ? this.flags | 8 : this.flags & (-9);
                        this.flags = i2;
                        int i3 = this.pending ? i2 | 16 : i2 & (-17);
                        this.flags = i3;
                        int i4 = this.failed ? i3 | 64 : i3 & (-65);
                        this.flags = i4;
                        int i5 = this.gift ? i4 | 1024 : i4 & (-1025);
                        this.flags = i5;
                        int i6 = this.reaction ? i5 | 2048 : i5 & (-2049);
                        this.flags = i6;
                        int i7 = this.subscription ? i6 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i6 & (-4097);
                        this.flags = i7;
                        int i8 = this.floodskip ? i7 | LiteMode.FLAG_CHAT_SCALE : i7 & (-32769);
                        this.flags = i8;
                        int i9 = this.stargift_upgrade ? i8 | 262144 : i8 & (-262145);
                        this.flags = i9;
                        int i10 = this.paid_message ? i9 | 524288 : i9 & (-524289);
                        this.flags = i10;
                        int i11 = this.premium_gift ? i10 | FileLoaderPriorityQueue.PRIORITY_VALUE_MAX : i10 & (-1048577);
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
                    }
                };
                break;
            case -1442789224:
                tL_stars$TL_starsTransaction = new TL_stars$TL_starsTransaction() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransaction_layer182
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.refund = (int32 & 8) != 0;
                        this.pending = (int32 & 16) != 0;
                        this.failed = (int32 & 64) != 0;
                        this.id = inputSerializedData2.readString(z2);
                        this.amount = TL_stars$StarsAmount.ofStars(inputSerializedData2.readInt64(z2));
                        this.date = inputSerializedData2.readInt32(z2);
                        this.peer = TL_stars$StarsTransactionPeer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 1) != 0) {
                            this.title = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.photo = TLRPC.WebDocument.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.transaction_date = inputSerializedData2.readInt32(z2);
                            this.transaction_url = inputSerializedData2.readString(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-1442789224);
                        int i2 = this.refund ? this.flags | 8 : this.flags & (-9);
                        this.flags = i2;
                        int i3 = this.pending ? i2 | 16 : i2 & (-17);
                        this.flags = i3;
                        int i4 = this.failed ? i3 | 64 : i3 & (-65);
                        this.flags = i4;
                        outputSerializedData.writeInt32(i4);
                        outputSerializedData.writeInt64(this.amount.amount);
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
                    }
                };
                break;
            case -865044046:
                tL_stars$TL_starsTransaction = new TL_stars$StarsTransaction() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransaction_layer181
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.refund = (int32 & 8) != 0;
                        this.id = inputSerializedData2.readString(z2);
                        this.amount = TL_stars$StarsAmount.ofStars(inputSerializedData2.readInt64(z2));
                        this.date = inputSerializedData2.readInt32(z2);
                        this.peer = TL_stars$StarsTransactionPeer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 1) != 0) {
                            this.title = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.photo = TLRPC.WebDocument.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-865044046);
                        int i2 = this.refund ? this.flags | 8 : this.flags & (-9);
                        this.flags = i2;
                        outputSerializedData.writeInt32(i2);
                        outputSerializedData.writeInt64(this.amount.amount);
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
                    }
                };
                break;
            case -321582812:
                tL_stars$TL_starsTransaction = new TL_stars$TL_starsTransaction() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransaction_layer199_2
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
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
                        this.id = inputSerializedData2.readString(z2);
                        this.amount = TL_stars$StarsAmount.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        this.date = inputSerializedData2.readInt32(z2);
                        this.peer = TL_stars$StarsTransactionPeer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 1) != 0) {
                            this.title = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.photo = TLRPC.WebDocument.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.transaction_date = inputSerializedData2.readInt32(z2);
                            this.transaction_url = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 128) != 0) {
                            this.bot_payload = inputSerializedData2.readByteArray(z2);
                        }
                        if ((this.flags & 256) != 0) {
                            this.msg_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
                            this.extended_media = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0) {
                            this.subscription_period = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0) {
                            this.giveaway_post_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
                            this.stargift = TL_stars$StarGift.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
                            this.floodskip_number = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 65536) != 0) {
                            this.starref_commission_permille = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 131072) != 0) {
                            this.starref_peer = TLRPC.Peer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                            this.starref_amount = TL_stars$StarsAmount.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 524288) != 0) {
                            this.paid_messages = inputSerializedData2.readInt32(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-321582812);
                        int i2 = this.refund ? this.flags | 8 : this.flags & (-9);
                        this.flags = i2;
                        int i3 = this.pending ? i2 | 16 : i2 & (-17);
                        this.flags = i3;
                        int i4 = this.failed ? i3 | 64 : i3 & (-65);
                        this.flags = i4;
                        int i5 = this.gift ? i4 | 1024 : i4 & (-1025);
                        this.flags = i5;
                        int i6 = this.reaction ? i5 | 2048 : i5 & (-2049);
                        this.flags = i6;
                        int i7 = this.subscription ? i6 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i6 & (-4097);
                        this.flags = i7;
                        int i8 = this.floodskip ? i7 | LiteMode.FLAG_CHAT_SCALE : i7 & (-32769);
                        this.flags = i8;
                        int i9 = this.stargift_upgrade ? i8 | 262144 : i8 & (-262145);
                        this.flags = i9;
                        int i10 = this.paid_message ? i9 | 524288 : i9 & (-524289);
                        this.flags = i10;
                        int i11 = this.premium_gift ? i10 | FileLoaderPriorityQueue.PRIORITY_VALUE_MAX : i10 & (-1048577);
                        this.flags = i11;
                        outputSerializedData.writeInt32(i11);
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
                    }
                };
                break;
            case -294313259:
                tL_stars$TL_starsTransaction = new TL_stars$TL_starsTransaction() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransaction_layer188
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.refund = (int32 & 8) != 0;
                        this.pending = (int32 & 16) != 0;
                        this.failed = (int32 & 64) != 0;
                        this.gift = (int32 & 1024) != 0;
                        this.reaction = (int32 & 2048) != 0;
                        this.subscription = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0;
                        this.id = inputSerializedData2.readString(z2);
                        this.amount = TL_stars$StarsAmount.ofStars(inputSerializedData2.readInt64(z2));
                        this.date = inputSerializedData2.readInt32(z2);
                        this.peer = TL_stars$StarsTransactionPeer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 1) != 0) {
                            this.title = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.photo = TLRPC.WebDocument.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.transaction_date = inputSerializedData2.readInt32(z2);
                            this.transaction_url = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 128) != 0) {
                            this.bot_payload = inputSerializedData2.readByteArray(z2);
                        }
                        if ((this.flags & 256) != 0) {
                            this.msg_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
                            this.extended_media = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0) {
                            this.subscription_period = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0) {
                            this.giveaway_post_id = inputSerializedData2.readInt32(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-294313259);
                        int i2 = this.refund ? this.flags | 8 : this.flags & (-9);
                        this.flags = i2;
                        int i3 = this.pending ? i2 | 16 : i2 & (-17);
                        this.flags = i3;
                        int i4 = this.failed ? i3 | 64 : i3 & (-65);
                        this.flags = i4;
                        int i5 = this.gift ? i4 | 1024 : i4 & (-1025);
                        this.flags = i5;
                        int i6 = this.reaction ? i5 | 2048 : i5 & (-2049);
                        this.flags = i6;
                        int i7 = this.subscription ? i6 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i6 & (-4097);
                        this.flags = i7;
                        outputSerializedData.writeInt32(i7);
                        outputSerializedData.writeInt64(this.amount.amount);
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
                    }
                };
                break;
            case 178185410:
                tL_stars$TL_starsTransaction = new TL_stars$TL_starsTransaction() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransaction_layer191
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.refund = (int32 & 8) != 0;
                        this.pending = (int32 & 16) != 0;
                        this.failed = (int32 & 64) != 0;
                        this.gift = (int32 & 1024) != 0;
                        this.reaction = (int32 & 2048) != 0;
                        this.subscription = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0;
                        this.id = inputSerializedData2.readString(z2);
                        this.amount = TL_stars$StarsAmount.ofStars(inputSerializedData2.readInt64(z2));
                        this.date = inputSerializedData2.readInt32(z2);
                        this.peer = TL_stars$StarsTransactionPeer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 1) != 0) {
                            this.title = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.photo = TLRPC.WebDocument.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.transaction_date = inputSerializedData2.readInt32(z2);
                            this.transaction_url = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 128) != 0) {
                            this.bot_payload = inputSerializedData2.readByteArray(z2);
                        }
                        if ((this.flags & 256) != 0) {
                            this.msg_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
                            this.extended_media = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0) {
                            this.subscription_period = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0) {
                            this.giveaway_post_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
                            this.stargift = TL_stars$StarGift.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(178185410);
                        int i2 = this.refund ? this.flags | 8 : this.flags & (-9);
                        this.flags = i2;
                        int i3 = this.pending ? i2 | 16 : i2 & (-17);
                        this.flags = i3;
                        int i4 = this.failed ? i3 | 64 : i3 & (-65);
                        this.flags = i4;
                        int i5 = this.gift ? i4 | 1024 : i4 & (-1025);
                        this.flags = i5;
                        int i6 = this.reaction ? i5 | 2048 : i5 & (-2049);
                        this.flags = i6;
                        int i7 = this.subscription ? i6 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i6 & (-4097);
                        this.flags = i7;
                        outputSerializedData.writeInt32(i7);
                        outputSerializedData.writeInt64(this.amount.amount);
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
                    }
                };
                break;
            case 325426864:
                tL_stars$TL_starsTransaction = new TL_stars$TL_starsTransaction();
                break;
            case 766853519:
                tL_stars$TL_starsTransaction = new TL_stars$TL_starsTransaction() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransaction_layer185
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.refund = (int32 & 8) != 0;
                        this.pending = (int32 & 16) != 0;
                        this.failed = (int32 & 64) != 0;
                        this.gift = (int32 & 1024) != 0;
                        this.id = inputSerializedData2.readString(z2);
                        this.amount = TL_stars$StarsAmount.ofStars(inputSerializedData2.readInt64(z2));
                        this.date = inputSerializedData2.readInt32(z2);
                        this.peer = TL_stars$StarsTransactionPeer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 1) != 0) {
                            this.title = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.photo = TLRPC.WebDocument.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.transaction_date = inputSerializedData2.readInt32(z2);
                            this.transaction_url = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 128) != 0) {
                            this.bot_payload = inputSerializedData2.readByteArray(z2);
                        }
                        if ((this.flags & 256) != 0) {
                            this.msg_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
                            this.extended_media = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0(), z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(766853519);
                        int i2 = this.refund ? this.flags | 8 : this.flags & (-9);
                        this.flags = i2;
                        int i3 = this.pending ? i2 | 16 : i2 & (-17);
                        this.flags = i3;
                        int i4 = this.failed ? i3 | 64 : i3 & (-65);
                        this.flags = i4;
                        int i5 = this.gift ? i4 | 1024 : i4 & (-1025);
                        this.flags = i5;
                        outputSerializedData.writeInt32(i5);
                        outputSerializedData.writeInt64(this.amount.amount);
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
                    }
                };
                break;
            case 903148150:
                tL_stars$TL_starsTransaction = new TL_stars$TL_starsTransaction() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransaction_layer194
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.refund = (int32 & 8) != 0;
                        this.pending = (int32 & 16) != 0;
                        this.failed = (int32 & 64) != 0;
                        this.gift = (int32 & 1024) != 0;
                        this.reaction = (int32 & 2048) != 0;
                        this.subscription = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0;
                        this.floodskip = (int32 & LiteMode.FLAG_CHAT_SCALE) != 0;
                        this.id = inputSerializedData2.readString(z2);
                        this.amount = TL_stars$StarsAmount.ofStars(inputSerializedData2.readInt64(z2));
                        this.date = inputSerializedData2.readInt32(z2);
                        this.peer = TL_stars$StarsTransactionPeer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 1) != 0) {
                            this.title = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.photo = TLRPC.WebDocument.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.transaction_date = inputSerializedData2.readInt32(z2);
                            this.transaction_url = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 128) != 0) {
                            this.bot_payload = inputSerializedData2.readByteArray(z2);
                        }
                        if ((this.flags & 256) != 0) {
                            this.msg_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
                            this.extended_media = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0) {
                            this.subscription_period = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0) {
                            this.giveaway_post_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
                            this.stargift = TL_stars$StarGift.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
                            this.floodskip_number = inputSerializedData2.readInt32(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(903148150);
                        int i2 = this.refund ? this.flags | 8 : this.flags & (-9);
                        this.flags = i2;
                        int i3 = this.pending ? i2 | 16 : i2 & (-17);
                        this.flags = i3;
                        int i4 = this.failed ? i3 | 64 : i3 & (-65);
                        this.flags = i4;
                        int i5 = this.gift ? i4 | 1024 : i4 & (-1025);
                        this.flags = i5;
                        int i6 = this.reaction ? i5 | 2048 : i5 & (-2049);
                        this.flags = i6;
                        int i7 = this.subscription ? i6 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i6 & (-4097);
                        this.flags = i7;
                        int i8 = this.floodskip ? i7 | LiteMode.FLAG_CHAT_SCALE : i7 & (-32769);
                        this.flags = i8;
                        outputSerializedData.writeInt32(i8);
                        outputSerializedData.writeInt64(this.amount.amount);
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
                    }
                };
                break;
            case 1127934763:
                tL_stars$TL_starsTransaction = new TL_stars$TL_starsTransaction() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransaction_layer186
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.refund = (int32 & 8) != 0;
                        this.pending = (int32 & 16) != 0;
                        this.failed = (int32 & 64) != 0;
                        this.gift = (int32 & 1024) != 0;
                        this.reaction = (int32 & 2048) != 0;
                        this.subscription = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0;
                        this.id = inputSerializedData2.readString(z2);
                        this.amount = TL_stars$StarsAmount.ofStars(inputSerializedData2.readInt64(z2));
                        this.date = inputSerializedData2.readInt32(z2);
                        this.peer = TL_stars$StarsTransactionPeer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 1) != 0) {
                            this.title = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.photo = TLRPC.WebDocument.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.transaction_date = inputSerializedData2.readInt32(z2);
                            this.transaction_url = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 128) != 0) {
                            this.bot_payload = inputSerializedData2.readByteArray(z2);
                        }
                        if ((this.flags & 256) != 0) {
                            this.msg_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
                            this.extended_media = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0) {
                            this.subscription_period = inputSerializedData2.readInt32(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(1127934763);
                        int i2 = this.refund ? this.flags | 8 : this.flags & (-9);
                        this.flags = i2;
                        int i3 = this.pending ? i2 | 16 : i2 & (-17);
                        this.flags = i3;
                        int i4 = this.failed ? i3 | 64 : i3 & (-65);
                        this.flags = i4;
                        int i5 = this.gift ? i4 | 1024 : i4 & (-1025);
                        this.flags = i5;
                        int i6 = this.reaction ? i5 | 2048 : i5 & (-2049);
                        this.flags = i6;
                        int i7 = this.subscription ? i6 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i6 & (-4097);
                        this.flags = i7;
                        outputSerializedData.writeInt32(i7);
                        outputSerializedData.writeInt64(this.amount.amount);
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
                    }
                };
                break;
            case 1692387622:
                tL_stars$TL_starsTransaction = new TL_stars$TL_starsTransaction() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransaction_layer199
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
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
                        this.id = inputSerializedData2.readString(z2);
                        this.amount = TL_stars$StarsAmount.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        this.date = inputSerializedData2.readInt32(z2);
                        this.peer = TL_stars$StarsTransactionPeer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 1) != 0) {
                            this.title = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.photo = TLRPC.WebDocument.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.transaction_date = inputSerializedData2.readInt32(z2);
                            this.transaction_url = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 128) != 0) {
                            this.bot_payload = inputSerializedData2.readByteArray(z2);
                        }
                        if ((this.flags & 256) != 0) {
                            this.msg_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
                            this.extended_media = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0) {
                            this.subscription_period = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0) {
                            this.giveaway_post_id = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
                            this.stargift = TL_stars$StarGift.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
                            this.floodskip_number = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 65536) != 0) {
                            this.starref_commission_permille = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 131072) != 0) {
                            this.starref_peer = TLRPC.Peer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                            this.starref_amount = TL_stars$StarsAmount.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starsTransaction, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(1692387622);
                        int i2 = this.refund ? this.flags | 8 : this.flags & (-9);
                        this.flags = i2;
                        int i3 = this.pending ? i2 | 16 : i2 & (-17);
                        this.flags = i3;
                        int i4 = this.failed ? i3 | 64 : i3 & (-65);
                        this.flags = i4;
                        int i5 = this.gift ? i4 | 1024 : i4 & (-1025);
                        this.flags = i5;
                        int i6 = this.reaction ? i5 | 2048 : i5 & (-2049);
                        this.flags = i6;
                        int i7 = this.subscription ? i6 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i6 & (-4097);
                        this.flags = i7;
                        int i8 = this.floodskip ? i7 | LiteMode.FLAG_CHAT_SCALE : i7 & (-32769);
                        this.flags = i8;
                        int i9 = this.stargift_upgrade ? i8 | 262144 : i8 & (-262145);
                        this.flags = i9;
                        int i10 = this.paid_message ? i9 | 524288 : i9 & (-524289);
                        this.flags = i10;
                        outputSerializedData.writeInt32(i10);
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
                    }
                };
                break;
            default:
                tL_stars$TL_starsTransaction = null;
                break;
        }
        if (tL_stars$TL_starsTransaction == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StarsTransaction", Integer.valueOf(i)));
        }
        if (tL_stars$TL_starsTransaction != null) {
            tL_stars$TL_starsTransaction.readParams(inputSerializedData, z);
        }
        return tL_stars$TL_starsTransaction;
    }
}
