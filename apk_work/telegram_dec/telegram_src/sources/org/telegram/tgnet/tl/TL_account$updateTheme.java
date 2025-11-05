package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$updateTheme extends TLObject {
    public TLRPC.InputDocument document;
    public int flags;
    public String format;
    public TLRPC.TL_inputThemeSettings settings;
    public String slug;
    public TLRPC.InputTheme theme;
    public String title;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Theme.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1555261397);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeString(this.format);
        this.theme.serializeToStream(outputSerializedData);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.slug);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.title);
        }
        if ((this.flags & 4) != 0) {
            this.document.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 8) != 0) {
            this.settings.serializeToStream(outputSerializedData);
        }
    }
}
