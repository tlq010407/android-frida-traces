package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_wallPapers extends TL_account$WallPapers {
    public long hash;
    public ArrayList wallpapers = new ArrayList();

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.hash = inputSerializedData.readInt64(z);
        this.wallpapers = Vector.deserialize(inputSerializedData, new TL_account$TL_wallPapers$$ExternalSyntheticLambda0(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-842824308);
        outputSerializedData.writeInt64(this.hash);
        Vector.serialize(outputSerializedData, this.wallpapers);
    }
}
