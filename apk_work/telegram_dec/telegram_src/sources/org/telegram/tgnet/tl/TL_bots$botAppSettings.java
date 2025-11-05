package org.telegram.tgnet.tl;

import android.graphics.Path;
import org.telegram.messenger.SvgHelper;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$botAppSettings extends TLObject {
    public int background_color;
    public int background_dark_color;
    public int flags;
    public int header_color;
    public int header_dark_color;
    public byte[] placeholder_path;
    public Path placeholder_svg_path;

    public static TL_bots$botAppSettings TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-912582320 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in botAppSettings", Integer.valueOf(i)));
            }
            return null;
        }
        TL_bots$botAppSettings tL_bots$botAppSettings = new TL_bots$botAppSettings();
        tL_bots$botAppSettings.readParams(inputSerializedData, z);
        return tL_bots$botAppSettings;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        if ((int32 & 1) != 0) {
            byte[] byteArray = inputSerializedData.readByteArray(z);
            this.placeholder_path = byteArray;
            this.placeholder_svg_path = SvgHelper.doPath(SvgHelper.decompress(byteArray));
        }
        if ((this.flags & 2) != 0) {
            this.background_color = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 4) != 0) {
            this.background_dark_color = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 8) != 0) {
            this.header_color = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 16) != 0) {
            this.header_dark_color = inputSerializedData.readInt32(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-912582320);
        outputSerializedData.writeInt32(this.flags);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeByteArray(this.placeholder_path);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeInt32(this.background_color);
        }
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeInt32(this.background_dark_color);
        }
        if ((this.flags & 8) != 0) {
            outputSerializedData.writeInt32(this.header_color);
        }
        if ((this.flags & 16) != 0) {
            outputSerializedData.writeInt32(this.header_dark_color);
        }
    }
}
