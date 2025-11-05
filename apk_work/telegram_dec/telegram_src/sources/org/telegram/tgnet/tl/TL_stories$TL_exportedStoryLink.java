package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_exportedStoryLink extends TLObject {
    public String link;

    public static TL_stories$TL_exportedStoryLink TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (1070138683 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_exportedStoryLink", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_exportedStoryLink tL_stories$TL_exportedStoryLink = new TL_stories$TL_exportedStoryLink();
        tL_stories$TL_exportedStoryLink.readParams(inputSerializedData, z);
        return tL_stories$TL_exportedStoryLink;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.link = inputSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1070138683);
        outputSerializedData.writeString(this.link);
    }
}
