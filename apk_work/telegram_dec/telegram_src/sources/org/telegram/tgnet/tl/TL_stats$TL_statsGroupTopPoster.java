package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stats$TL_statsGroupTopPoster extends TLObject {
    public int avg_chars;
    public int messages;
    public long user_id;

    public static TL_stats$TL_statsGroupTopPoster TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1660637285 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_statsGroupTopPoster", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stats$TL_statsGroupTopPoster tL_stats$TL_statsGroupTopPoster = new TL_stats$TL_statsGroupTopPoster();
        tL_stats$TL_statsGroupTopPoster.readParams(inputSerializedData, z);
        return tL_stats$TL_statsGroupTopPoster;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.user_id = inputSerializedData.readInt64(z);
        this.messages = inputSerializedData.readInt32(z);
        this.avg_chars = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1660637285);
        outputSerializedData.writeInt64(this.user_id);
        outputSerializedData.writeInt32(this.messages);
        outputSerializedData.writeInt32(this.avg_chars);
    }
}
