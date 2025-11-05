package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$editPreviewMedia extends TLObject {
    public TLRPC.InputUser bot;
    public String lang_code = "";
    public TLRPC.InputMedia media;
    public TLRPC.InputMedia new_media;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_bots$botPreviewMedia.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-2061148049);
        this.bot.serializeToStream(outputSerializedData);
        outputSerializedData.writeString(this.lang_code);
        this.media.serializeToStream(outputSerializedData);
        this.new_media.serializeToStream(outputSerializedData);
    }
}
