package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$resaleStarGifts extends TLObject {
    public long attributes_hash;
    public int count;
    public int flags;
    public String next_offset;
    public ArrayList gifts = new ArrayList();
    public ArrayList attributes = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList counters = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_stars$resaleStarGifts TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1803939105 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_payments.starRefProgram", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stars$resaleStarGifts tL_stars$resaleStarGifts = new TL_stars$resaleStarGifts();
        tL_stars$resaleStarGifts.readParams(inputSerializedData, z);
        return tL_stars$resaleStarGifts;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.count = inputSerializedData.readInt32(z);
        this.gifts = Vector.deserialize(inputSerializedData, new TL_stars$TL_starGifts$$ExternalSyntheticLambda0(), z);
        if ((this.flags & 1) != 0) {
            this.next_offset = inputSerializedData.readString(z);
        }
        if ((this.flags & 2) != 0) {
            this.attributes = Vector.deserialize(inputSerializedData, new TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda0(), z);
            this.attributes_hash = inputSerializedData.readInt64(z);
        }
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        if ((this.flags & 4) != 0) {
            this.counters = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_stars$resaleStarGifts$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_stars$starGiftAttributeCounter.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
        }
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }
}
