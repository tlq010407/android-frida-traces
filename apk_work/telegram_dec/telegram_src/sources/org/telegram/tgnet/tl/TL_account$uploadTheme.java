package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$uploadTheme extends TLObject {
    public TLRPC.InputFile file;
    public String file_name;
    public int flags;
    public String mime_type;
    public TLRPC.InputFile thumb;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Document.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(473805619);
        outputSerializedData.writeInt32(this.flags);
        this.file.serializeToStream(outputSerializedData);
        if ((this.flags & 1) != 0) {
            this.thumb.serializeToStream(outputSerializedData);
        }
        outputSerializedData.writeString(this.file_name);
        outputSerializedData.writeString(this.mime_type);
    }
}
