package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$starGiftAttributeModel extends TL_stars$StarGiftAttribute {
    public TLRPC.Document document;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.name = inputSerializedData.readString(z);
        this.document = TLRPC.Document.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.rarity_permille = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(970559507);
        outputSerializedData.writeString(this.name);
        this.document.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt32(this.rarity_permille);
    }
}
