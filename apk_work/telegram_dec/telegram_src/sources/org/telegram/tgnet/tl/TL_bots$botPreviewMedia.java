package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$botPreviewMedia extends TLObject {
    public int date;
    public TLRPC.MessageMedia media;

    public static TL_bots$botPreviewMedia TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (602479523 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in botPreviewMedia", Integer.valueOf(i)));
            }
            return null;
        }
        TL_bots$botPreviewMedia tL_bots$botPreviewMedia = new TL_bots$botPreviewMedia();
        tL_bots$botPreviewMedia.readParams(inputSerializedData, z);
        return tL_bots$botPreviewMedia;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.date = inputSerializedData.readInt32(z);
        this.media = TLRPC.MessageMedia.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(602479523);
        outputSerializedData.writeInt32(this.date);
        this.media.serializeToStream(outputSerializedData);
    }
}
