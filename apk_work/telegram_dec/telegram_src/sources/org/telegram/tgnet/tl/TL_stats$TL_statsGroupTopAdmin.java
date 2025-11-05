package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stats$TL_statsGroupTopAdmin extends TLObject {
    public int banned;
    public int deleted;
    public int kicked;
    public long user_id;

    public static TL_stats$TL_statsGroupTopAdmin TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-682079097 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_statsGroupTopAdmin", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stats$TL_statsGroupTopAdmin tL_stats$TL_statsGroupTopAdmin = new TL_stats$TL_statsGroupTopAdmin();
        tL_stats$TL_statsGroupTopAdmin.readParams(inputSerializedData, z);
        return tL_stats$TL_statsGroupTopAdmin;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.user_id = inputSerializedData.readInt64(z);
        this.deleted = inputSerializedData.readInt32(z);
        this.kicked = inputSerializedData.readInt32(z);
        this.banned = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-682079097);
        outputSerializedData.writeInt64(this.user_id);
        outputSerializedData.writeInt32(this.deleted);
        outputSerializedData.writeInt32(this.kicked);
        outputSerializedData.writeInt32(this.banned);
    }
}
