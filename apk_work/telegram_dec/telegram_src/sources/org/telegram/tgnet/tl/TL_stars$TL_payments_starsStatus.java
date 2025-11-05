package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_payments_starsStatus extends TL_stars$StarsStatus {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.balance = TL_stars$StarsAmount.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        if ((this.flags & 2) != 0) {
            this.subscriptions = Vector.deserialize(inputSerializedData, new TL_stars$TL_payments_starsStatus$$ExternalSyntheticLambda0(), z);
        }
        if ((this.flags & 4) != 0) {
            this.subscriptions_next_offset = inputSerializedData.readString(z);
        }
        if ((this.flags & 16) != 0) {
            this.subscriptions_missing_balance = inputSerializedData.readInt64(z);
        }
        if ((this.flags & 8) != 0) {
            this.history = Vector.deserialize(inputSerializedData, new TL_stars$TL_payments_starsStatus$$ExternalSyntheticLambda1(), z);
        }
        if ((this.flags & 1) != 0) {
            this.next_offset = inputSerializedData.readString(z);
        }
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1822222573);
        outputSerializedData.writeInt32(this.flags);
        this.balance.serializeToStream(outputSerializedData);
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
}
