package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$setBotInfo extends TLObject {
    public String about;
    public TLRPC.InputUser bot;
    public String description;
    public int flags;
    public String lang_code;
    public String name;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(282013987);
        outputSerializedData.writeInt32(this.flags);
        if ((this.flags & 4) != 0) {
            this.bot.serializeToStream(outputSerializedData);
        }
        outputSerializedData.writeString(this.lang_code);
        if ((this.flags & 8) != 0) {
            outputSerializedData.writeString(this.name);
        }
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.about);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.description);
        }
    }
}
