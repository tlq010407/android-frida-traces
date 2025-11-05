package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stars$StarsSubscription extends TLObject {
    public boolean bot_canceled;
    public boolean can_refulfill;
    public boolean canceled;
    public String chat_invite_hash;
    public int flags;
    public String id;
    public String invoice_slug;
    public boolean missing_balance;
    public TLRPC.Peer peer;
    public TLRPC.WebDocument photo;
    public TL_stars$TL_starsSubscriptionPricing pricing;
    public String title;
    public int until_date;

    public static TL_stars$StarsSubscription TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stars$StarsSubscription tL_stars$TL_starsSubscription = i != -797707802 ? i != 779004698 ? i != 1401868056 ? null : new TL_stars$StarsSubscription() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsSubscription_layer193
            @Override // org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                int int32 = inputSerializedData2.readInt32(z2);
                this.flags = int32;
                this.canceled = (int32 & 1) != 0;
                this.can_refulfill = (int32 & 2) != 0;
                this.missing_balance = (int32 & 4) != 0;
                this.id = inputSerializedData2.readString(z2);
                this.peer = TLRPC.Peer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                this.until_date = inputSerializedData2.readInt32(z2);
                this.pricing = TL_stars$TL_starsSubscriptionPricing.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                if ((this.flags & 8) != 0) {
                    this.chat_invite_hash = inputSerializedData2.readString(z2);
                }
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(1401868056);
                int i2 = this.canceled ? this.flags | 1 : this.flags & (-2);
                this.flags = i2;
                int i3 = this.can_refulfill ? i2 | 2 : i2 & (-3);
                this.flags = i3;
                int i4 = this.missing_balance ? i3 | 4 : i3 & (-5);
                this.flags = i4;
                outputSerializedData.writeInt32(i4);
                outputSerializedData.writeString(this.id);
                this.peer.serializeToStream(outputSerializedData);
                outputSerializedData.writeInt32(this.until_date);
                this.pricing.serializeToStream(outputSerializedData);
                if ((this.flags & 8) != 0) {
                    outputSerializedData.writeString(this.chat_invite_hash);
                }
            }
        } : new TL_stars$TL_starsSubscription() : new TL_stars$TL_starsSubscription() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsSubscription_old
            @Override // org.telegram.tgnet.tl.TL_stars$TL_starsSubscription, org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                int int32 = inputSerializedData2.readInt32(z2);
                this.flags = int32;
                this.canceled = (int32 & 1) != 0;
                this.can_refulfill = (int32 & 2) != 0;
                this.missing_balance = (int32 & 4) != 0;
                this.id = inputSerializedData2.readString(z2);
                this.peer = TLRPC.Peer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                this.until_date = inputSerializedData2.readInt32(z2);
                this.pricing = TL_stars$TL_starsSubscriptionPricing.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
            }

            @Override // org.telegram.tgnet.tl.TL_stars$TL_starsSubscription, org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-797707802);
                int i2 = this.canceled ? this.flags | 1 : this.flags & (-2);
                this.flags = i2;
                int i3 = this.can_refulfill ? i2 | 2 : i2 & (-3);
                this.flags = i3;
                int i4 = this.missing_balance ? i3 | 4 : i3 & (-5);
                this.flags = i4;
                outputSerializedData.writeInt32(i4);
                outputSerializedData.writeString(this.id);
                this.peer.serializeToStream(outputSerializedData);
                outputSerializedData.writeInt32(this.until_date);
                this.pricing.serializeToStream(outputSerializedData);
            }
        };
        if (tL_stars$TL_starsSubscription == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StarsTransaction", Integer.valueOf(i)));
        }
        if (tL_stars$TL_starsSubscription != null) {
            tL_stars$TL_starsSubscription.readParams(inputSerializedData, z);
        }
        return tL_stars$TL_starsSubscription;
    }
}
