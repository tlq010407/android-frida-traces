package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class TL_stars$TL_payments_savedStarGifts extends TLObject {
    public boolean chat_notifications_enabled;
    public int count;
    public int flags;
    public String next_offset;
    public ArrayList gifts = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_stars$TL_payments_savedStarGifts TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1779201615 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_payments_savedStarGifts", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stars$TL_payments_savedStarGifts tL_stars$TL_payments_savedStarGifts = new TL_stars$TL_payments_savedStarGifts();
        tL_stars$TL_payments_savedStarGifts.readParams(inputSerializedData, z);
        return tL_stars$TL_payments_savedStarGifts;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.count = inputSerializedData.readInt32(z);
        if ((this.flags & 2) != 0) {
            this.chat_notifications_enabled = inputSerializedData.readBool(z);
        }
        this.gifts = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_stars$TL_payments_savedStarGifts$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_stars$SavedStarGift.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        if ((this.flags & 1) != 0) {
            this.next_offset = inputSerializedData.readString(z);
        }
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1779201615);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeInt32(this.count);
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeBool(this.chat_notifications_enabled);
        }
        Vector.serialize(outputSerializedData, this.gifts);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.next_offset);
        }
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
    }
}
