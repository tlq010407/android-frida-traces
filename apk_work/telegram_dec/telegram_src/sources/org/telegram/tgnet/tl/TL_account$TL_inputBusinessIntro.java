package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_inputBusinessIntro extends TLObject {
    public String description;
    public int flags;
    public TLRPC.InputDocument sticker;
    public String title;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.title = inputSerializedData.readString(z);
        this.description = inputSerializedData.readString(z);
        if ((this.flags & 1) != 0) {
            this.sticker = TLRPC.InputDocument.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(163867085);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeString(this.title);
        outputSerializedData.writeString(this.description);
        if ((this.flags & 1) != 0) {
            this.sticker.serializeToStream(outputSerializedData);
        }
    }
}
