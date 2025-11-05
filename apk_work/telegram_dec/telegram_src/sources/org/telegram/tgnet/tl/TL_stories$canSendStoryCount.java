package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$canSendStoryCount extends TLObject {
    public int count_remains;

    public static TL_stories$canSendStoryCount TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1014513586 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in canSendStoryCount", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$canSendStoryCount tL_stories$canSendStoryCount = new TL_stories$canSendStoryCount();
        tL_stories$canSendStoryCount.readParams(inputSerializedData, z);
        return tL_stories$canSendStoryCount;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.count_remains = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1014513586);
        outputSerializedData.writeInt32(this.count_remains);
    }
}
