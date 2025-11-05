package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$autoDownloadSettings extends TLObject {
    public TLRPC.TL_autoDownloadSettings high;
    public TLRPC.TL_autoDownloadSettings low;
    public TLRPC.TL_autoDownloadSettings medium;

    public static TL_account$autoDownloadSettings TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (1674235686 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_account_autoDownloadSettings", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$autoDownloadSettings tL_account$autoDownloadSettings = new TL_account$autoDownloadSettings();
        tL_account$autoDownloadSettings.readParams(inputSerializedData, z);
        return tL_account$autoDownloadSettings;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.low = TLRPC.TL_autoDownloadSettings.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.medium = TLRPC.TL_autoDownloadSettings.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.high = TLRPC.TL_autoDownloadSettings.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1674235686);
        this.low.serializeToStream(outputSerializedData);
        this.medium.serializeToStream(outputSerializedData);
        this.high.serializeToStream(outputSerializedData);
    }
}
