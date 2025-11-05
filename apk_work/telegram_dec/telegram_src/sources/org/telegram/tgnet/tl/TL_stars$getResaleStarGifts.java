package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$getResaleStarGifts extends TLObject {
    public ArrayList attributes = new ArrayList();
    public long attributes_hash;
    public int flags;
    public long gift_id;
    public int limit;
    public String offset;
    public boolean sort_by_num;
    public boolean sort_by_price;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stars$resaleStarGifts.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(2053087798);
        int i = this.sort_by_price ? this.flags | 2 : this.flags & (-3);
        this.flags = i;
        int i2 = this.sort_by_num ? i | 4 : i & (-5);
        this.flags = i2;
        outputSerializedData.writeInt32(i2);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt64(this.attributes_hash);
        }
        outputSerializedData.writeInt64(this.gift_id);
        if ((this.flags & 8) != 0) {
            Vector.serialize(outputSerializedData, this.attributes);
        }
        outputSerializedData.writeString(this.offset);
        outputSerializedData.writeInt32(this.limit);
    }
}
