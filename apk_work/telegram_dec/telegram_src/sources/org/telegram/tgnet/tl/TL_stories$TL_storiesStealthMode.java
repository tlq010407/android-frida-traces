package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_storiesStealthMode extends TLObject {
    public int active_until_date;
    public int cooldown_until_date;
    public int flags;

    public static TL_stories$TL_storiesStealthMode TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (1898850301 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_storiesStealthMode", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_storiesStealthMode tL_stories$TL_storiesStealthMode = new TL_stories$TL_storiesStealthMode();
        tL_stories$TL_storiesStealthMode.readParams(inputSerializedData, z);
        return tL_stories$TL_storiesStealthMode;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        if ((int32 & 1) != 0) {
            this.active_until_date = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 2) != 0) {
            this.cooldown_until_date = inputSerializedData.readInt32(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1898850301);
        outputSerializedData.writeInt32(this.flags);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt32(this.active_until_date);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeInt32(this.cooldown_until_date);
        }
    }
}
