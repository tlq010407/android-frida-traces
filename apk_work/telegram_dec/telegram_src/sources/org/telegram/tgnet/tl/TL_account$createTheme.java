package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$createTheme extends TLObject {
    public TLRPC.InputDocument document;
    public int flags;
    public TLRPC.TL_inputThemeSettings settings;
    public String slug;
    public String title;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Theme.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-2077048289);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeString(this.slug);
        outputSerializedData.writeString(this.title);
        if ((this.flags & 4) != 0) {
            this.document.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 8) != 0) {
            this.settings.serializeToStream(outputSerializedData);
        }
    }
}
