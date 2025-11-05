package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stars$StarsStatus extends TLObject {
    public int flags;
    public String next_offset;
    public long subscriptions_missing_balance;
    public String subscriptions_next_offset;
    public TL_stars$StarsAmount balance = TL_stars$StarsAmount.ofStars(0);
    public ArrayList subscriptions = new ArrayList();
    public ArrayList history = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_stars$StarsStatus TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stars$TL_payments_starsStatus tL_stars$TL_payments_starsStatus = i != -1141231252 ? i != 1822222573 ? null : new TL_stars$TL_payments_starsStatus() : new TL_stars$TL_payments_starsStatus() { // from class: org.telegram.tgnet.tl.TL_stars$TL_payments_starsStatus_layer194
            @Override // org.telegram.tgnet.tl.TL_stars$TL_payments_starsStatus, org.telegram.tgnet.TLObject
            public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                this.flags = inputSerializedData2.readInt32(z2);
                this.balance = TL_stars$StarsAmount.ofStars(inputSerializedData2.readInt64(z2));
                if ((this.flags & 2) != 0) {
                    this.subscriptions = Vector.deserialize(inputSerializedData2, new TL_stars$TL_payments_starsStatus$$ExternalSyntheticLambda0(), z2);
                }
                if ((this.flags & 4) != 0) {
                    this.subscriptions_next_offset = inputSerializedData2.readString(z2);
                }
                if ((this.flags & 16) != 0) {
                    this.subscriptions_missing_balance = inputSerializedData2.readInt64(z2);
                }
                if ((this.flags & 8) != 0) {
                    this.history = Vector.deserialize(inputSerializedData2, new TL_stars$TL_payments_starsStatus$$ExternalSyntheticLambda1(), z2);
                }
                if ((this.flags & 1) != 0) {
                    this.next_offset = inputSerializedData2.readString(z2);
                }
                this.chats = Vector.deserialize(inputSerializedData2, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z2);
                this.users = Vector.deserialize(inputSerializedData2, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z2);
            }

            @Override // org.telegram.tgnet.tl.TL_stars$TL_payments_starsStatus, org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-1141231252);
                outputSerializedData.writeInt32(this.flags);
                outputSerializedData.writeInt64(this.balance.amount);
                if ((this.flags & 2) != 0) {
                    Vector.serialize(outputSerializedData, this.subscriptions);
                }
                if ((this.flags & 4) != 0) {
                    outputSerializedData.writeString(this.subscriptions_next_offset);
                }
                if ((this.flags & 16) != 0) {
                    outputSerializedData.writeInt64(this.subscriptions_missing_balance);
                }
                if ((this.flags & 8) != 0) {
                    Vector.serialize(outputSerializedData, this.history);
                }
                if ((this.flags & 1) != 0) {
                    outputSerializedData.writeString(this.next_offset);
                }
                Vector.serialize(outputSerializedData, this.chats);
                Vector.serialize(outputSerializedData, this.users);
            }
        };
        if (tL_stars$TL_payments_starsStatus == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StarsStatus", Integer.valueOf(i)));
        }
        if (tL_stars$TL_payments_starsStatus != null) {
            tL_stars$TL_payments_starsStatus.readParams(inputSerializedData, z);
        }
        return tL_stars$TL_payments_starsStatus;
    }
}
