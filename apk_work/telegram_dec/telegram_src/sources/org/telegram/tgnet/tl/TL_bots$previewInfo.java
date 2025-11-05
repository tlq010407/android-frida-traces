package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$previewInfo extends TLObject {
    public ArrayList media = new ArrayList();
    public ArrayList lang_codes = new ArrayList();

    public static TL_bots$previewInfo TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (212278628 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in previewInfo", Integer.valueOf(i)));
            }
            return null;
        }
        TL_bots$previewInfo tL_bots$previewInfo = new TL_bots$previewInfo();
        tL_bots$previewInfo.readParams(inputSerializedData, z);
        return tL_bots$previewInfo;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.media = Vector.deserialize(inputSerializedData, new TL_bots$getPreviewMedias$$ExternalSyntheticLambda0(), z);
        this.lang_codes = Vector.deserializeString(inputSerializedData, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(212278628);
        Vector.serialize(outputSerializedData, this.media);
        Vector.serializeString(outputSerializedData, this.lang_codes);
    }
}
