package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$saveWallPaper extends TLObject {
    public TLRPC.TL_wallPaperSettings settings;
    public boolean unsave;
    public TLRPC.InputWallPaper wallpaper;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1817860919);
        this.wallpaper.serializeToStream(outputSerializedData);
        outputSerializedData.writeBool(this.unsave);
        this.settings.serializeToStream(outputSerializedData);
    }
}
