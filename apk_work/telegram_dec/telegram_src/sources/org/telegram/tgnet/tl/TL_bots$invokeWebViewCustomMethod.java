package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$invokeWebViewCustomMethod extends TLObject {
    public TLRPC.InputUser bot;
    public String custom_method;
    public TLRPC.TL_dataJSON params;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.TL_dataJSON.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(142591463);
        this.bot.serializeToStream(outputSerializedData);
        outputSerializedData.writeString(this.custom_method);
        this.params.serializeToStream(outputSerializedData);
    }
}
