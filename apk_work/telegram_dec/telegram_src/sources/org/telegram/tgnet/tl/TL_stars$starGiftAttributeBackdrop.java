package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$starGiftAttributeBackdrop extends TL_stars$StarGiftAttribute {
    public int backdrop_id;
    public int center_color;
    public int edge_color;
    public int pattern_color;
    public int text_color;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.name = inputSerializedData.readString(z);
        this.backdrop_id = inputSerializedData.readInt32(z);
        this.center_color = inputSerializedData.readInt32(z);
        this.edge_color = inputSerializedData.readInt32(z);
        this.pattern_color = inputSerializedData.readInt32(z);
        this.text_color = inputSerializedData.readInt32(z);
        this.rarity_permille = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-650279524);
        outputSerializedData.writeString(this.name);
        outputSerializedData.writeInt32(this.backdrop_id);
        outputSerializedData.writeInt32(this.center_color);
        outputSerializedData.writeInt32(this.edge_color);
        outputSerializedData.writeInt32(this.pattern_color);
        outputSerializedData.writeInt32(this.text_color);
        outputSerializedData.writeInt32(this.rarity_permille);
    }
}
