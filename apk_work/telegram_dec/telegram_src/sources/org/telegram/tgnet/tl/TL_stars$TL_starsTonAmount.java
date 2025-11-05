package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_starsTonAmount extends TL_stars$StarsAmount {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.amount = inputSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1957618656);
        outputSerializedData.writeInt64(this.amount);
    }
}
