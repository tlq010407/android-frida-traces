package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$getWebPagePreview extends TLObject {
    public ArrayList entities = new ArrayList();
    public int flags;
    public String message;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_account$webPagePreview.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1460498287);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeString(this.message);
        if ((this.flags & 8) != 0) {
            Vector.serialize(outputSerializedData, this.entities);
        }
    }
}
