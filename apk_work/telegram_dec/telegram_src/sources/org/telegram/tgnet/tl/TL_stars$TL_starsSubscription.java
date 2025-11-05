package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_starsSubscription extends TL_stars$StarsSubscription {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.canceled = (int32 & 1) != 0;
        this.can_refulfill = (int32 & 2) != 0;
        this.missing_balance = (int32 & 4) != 0;
        this.bot_canceled = (int32 & 128) != 0;
        this.id = inputSerializedData.readString(z);
        this.peer = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.until_date = inputSerializedData.readInt32(z);
        this.pricing = TL_stars$TL_starsSubscriptionPricing.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        if ((this.flags & 8) != 0) {
            this.chat_invite_hash = inputSerializedData.readString(z);
        }
        if ((this.flags & 16) != 0) {
            this.title = inputSerializedData.readString(z);
        }
        if ((this.flags & 32) != 0) {
            this.photo = TLRPC.WebDocument.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & 64) != 0) {
            this.invoice_slug = inputSerializedData.readString(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(779004698);
        int i = this.canceled ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.can_refulfill ? i | 2 : i & (-3);
        this.flags = i2;
        int i3 = this.missing_balance ? i2 | 4 : i2 & (-5);
        this.flags = i3;
        int i4 = this.bot_canceled ? i3 | 128 : i3 & (-129);
        this.flags = i4;
        outputSerializedData.writeInt32(i4);
        outputSerializedData.writeString(this.id);
        this.peer.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.until_date);
        this.pricing.serializeToStream(outputSerializedData);
        if ((this.flags & 8) != 0) {
            outputSerializedData.writeString(this.chat_invite_hash);
        }
        if ((this.flags & 16) != 0) {
            outputSerializedData.writeString(this.title);
        }
        if ((this.flags & 32) != 0) {
            this.photo.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 64) != 0) {
            outputSerializedData.writeString(this.invoice_slug);
        }
    }
}
