package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_businessIntro extends TLObject {
    public String description;
    public int flags;
    public TLRPC.Document sticker;
    public String title;

    public static TL_account$TL_businessIntro TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != 1510606445) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_businessIntro", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$TL_businessIntro tL_account$TL_businessIntro = new TL_account$TL_businessIntro();
        tL_account$TL_businessIntro.readParams(inputSerializedData, z);
        return tL_account$TL_businessIntro;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.title = inputSerializedData.readString(z);
        this.description = inputSerializedData.readString(z);
        if ((this.flags & 1) != 0) {
            this.sticker = TLRPC.Document.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1510606445);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeString(this.title);
        outputSerializedData.writeString(this.description);
        if ((this.flags & 1) != 0) {
            this.sticker.serializeToStream(outputSerializedData);
        }
    }
}
